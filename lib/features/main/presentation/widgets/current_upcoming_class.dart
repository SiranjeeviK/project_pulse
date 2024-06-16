import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/theme/light_pallete.dart';
import 'package:project_pulse/core/utils/add_space.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/main/presentation/cubits/current_and_upcoming_classes/current_and_upcoming_classes_cubit.dart';

// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class CurrentUpcomingClass extends StatefulWidget {
  const CurrentUpcomingClass({super.key});

  @override
  State<CurrentUpcomingClass> createState() => _CurrentUpcomingClassState();
}

PlatformWebViewControllerCreationParams _configWebViewController() {
  PlatformWebViewControllerCreationParams params =
      const PlatformWebViewControllerCreationParams();
  if (WebViewPlatform.instance is WebKitWebViewPlatform) {
    params = WebKitWebViewControllerCreationParams
        .fromPlatformWebViewControllerCreationParams(
      params,
    );
  } else if (WebViewPlatform.instance is AndroidWebViewPlatform) {
    params = AndroidWebViewControllerCreationParams
        .fromPlatformWebViewControllerCreationParams(
      params,
    );
  }

  return params;
}

WebViewController _getWebViewController(String url) {
  final WebViewController webViewController =
      WebViewController.fromPlatformCreationParams(
    _configWebViewController(),
  )
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setNavigationDelegate(NavigationDelegate(
          onProgress: (int progress) {
            AuthLoading();
          },
        ))
        ..loadRequest(Uri.parse(url));

  return webViewController;
}

class _CurrentUpcomingClassState extends State<CurrentUpcomingClass> {
  static const itbsem4 =
      'https://docs.google.com/spreadsheets/d/e/2PACX-1vSrLRXrLjuBiwxrXVhiys-pag_8d2HtFyJAjN_v2hM0J01YISapsakXAF-IKbbcyXv6TrubG673Ysbx/pubhtml?gid=64714920&single=true';

  @override
  void initState() {
    super.initState();
    context
        .read<CurrentAndUpcomingClassesCubit>()
        .getCurrentAndUpcomingClasses();
  }

  @override
  void dispose() {
    // webViewController.clearCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        height: 120,
        decoration: const BoxDecoration(
            color: AppPallete.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: GestureDetector(
          onTap: () async {
            print('tapped');
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return (Platform.isAndroid || Platform.isIOS)
                    ? Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        decoration: const BoxDecoration(
                          color: AppPallete.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: WebViewWidget(
                          controller: _getWebViewController(itbsem4),
                        ),
                      )
                    : const Text('Only supported on Android and iOS devices.');
              },
            ).then(
              (value) {
                context
                    .read<CurrentAndUpcomingClassesCubit>()
                    .getCurrentAndUpcomingClasses();

                if (mounted) setState(() {});
              },
            );
          },
          child: BlocConsumer<CurrentAndUpcomingClassesCubit,
              CurrentAndUpcomingClassesState>(
            listener: (context, state) {
              if (state is CurrentAndUpcomingClassesError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
                print(state.message);
              }
            },
            builder: (context, state) {
              if (state is CurrentAndUpcomingClassesLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // current class
                    Column(
                      children: [
                        Text(
                          'Now',
                          style: GoogleFonts.readexPro(
                            fontSize: 26,
                          ),
                        ),
                        addVerticalSpace(10),
                        Text(
                          state is CurrentAndUpcomingClassesLoaded
                              ? state.currentClass.currentClass
                              : '-',
                          style: GoogleFonts.readexPro(
                              fontSize: 24, color: LightPallete.primaryText),
                        )
                      ],
                    ),
                    // upcoming class
                    Column(
                      children: [
                        Text(
                          'Upcoming',
                          style: GoogleFonts.readexPro(fontSize: 26),
                        ),
                        addVerticalSpace(10),
                        Text(
                          state is CurrentAndUpcomingClassesLoaded
                              ? state.currentClass.upcomingClass
                              : '-',
                          style: GoogleFonts.readexPro(
                              fontSize: 24, color: LightPallete.primaryText),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
