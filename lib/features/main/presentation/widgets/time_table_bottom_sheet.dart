import 'package:flutter/material.dart';
import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class TimeTableBottomSheet extends StatelessWidget {
  final String url;
  const TimeTableBottomSheet({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: const BoxDecoration(
        color: AppPallete.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: WebViewWidget(
        controller: _getWebViewController(url),
      ),
    );
  }
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
