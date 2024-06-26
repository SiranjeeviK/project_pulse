import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pulse/core/common/widgets/loader.dart';
import 'package:project_pulse/core/error/exception.dart';
import 'package:project_pulse/core/theme/app_pallete.dart';
import 'package:project_pulse/core/utils/get_role_from_email.dart';
import 'package:project_pulse/core/utils/show_snackbar.dart';
import 'package:project_pulse/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:project_pulse/features/auth/presentation/widgets/auth_field.dart';
import 'package:project_pulse/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthFailure) {
                showSnackbar(context, state.message);
              } else if (state is AuthSuccess) {
                print("The state is: success");

                showSnackbar(
                    context, 'Account created successfully. Please Login');
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
              }
            },
            builder: (context, state) {
              if (state is AuthLoading) {
                return const Loader();
              }
              return Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    AuthField(
                      hintText: 'Name',
                      controller: nameController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                    const SizedBox(height: 15),
                    AuthField(
                      hintText: 'Password',
                      controller: passwordController,
                      isObscureText: true,
                    ),
                    const SizedBox(height: 20),
                    AuthGradientButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          String role = '';
                          try {
                            role = getRoleFromEmail(
                                emailController.text.trim().toLowerCase());
                          } on ServerException catch (e) {
                            showSnackbar(context, e.message);
                            return;
                          }
                          print('Sign Up pressed');
                          context.read<AuthBloc>().add(
                                AuthSignUp(
                                  email:
                                      emailController.text.trim().toLowerCase(),
                                  name: nameController.text.trim(),
                                  password: passwordController.text.trim(),
                                  role: role,
                                ),
                                // TODO: need to make sure name and password and role are added in supabase trigger
                              );
                        }
                      },
                      buttonText: 'Sign UP',
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an account? ',
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              TextSpan(
                                text: 'Sign In',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: AppPallete.gradient1,
                                        fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
