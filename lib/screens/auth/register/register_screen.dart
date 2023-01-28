import 'package:flutter/material.dart';
import 'package:massar_app/screens/auth/login/login_screen.dart';
import 'package:massar_app/screens/main_app/main_app.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/screens/widgets/password_input_field.dart';
import 'package:massar_app/screens/widgets/text_input_field.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/have_account.dart';
import 'widgets/register_info_text.dart';
import 'widgets/register_text.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final _registerFormKey = GlobalKey<FormState>();
  bool _obscureRegisterPasswordText = true;
  bool _obscureRegisterConfirmPasswordText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [RegisterText(), RegisterInfoText()],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.87,
              minChildSize: 0.87,
              maxChildSize: 0.87,
              builder: (BuildContext context, scrollController) {
                return Ink(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                    controller: scrollController,
                    child: Form(
                      key: _registerFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextInputField(
                            controller: _fullNameController,
                            labelText: 'Full Name',
                            inputType: TextInputType.name,
                            inputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.words,
                          ),
                          const SizedBox(height: 20),
                          TextInputField(
                            controller: _emailController,
                            labelText: 'Email Address',
                            inputType: TextInputType.emailAddress,
                            inputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          TextInputField(
                            controller: _phoneNumberController,
                            labelText: 'Phone Number',
                            inputType: TextInputType.phone,
                            inputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          PasswordInputField(
                            controller: _passwordController,
                            labelText: 'Password',
                            inputAction: TextInputAction.next,
                            obscureText: _obscureRegisterPasswordText,
                            toggle: () => setState(() => _obscureRegisterPasswordText =
                                !_obscureRegisterPasswordText),
                          ),
                          const SizedBox(height: 20),
                          PasswordInputField(
                            controller: _confirmPasswordController,
                            labelText: 'Confirm Password',
                            inputAction: TextInputAction.done,
                            obscureText: _obscureRegisterConfirmPasswordText,
                            toggle: () => setState(() =>
                                _obscureRegisterConfirmPasswordText =
                                    !_obscureRegisterConfirmPasswordText),
                          ),
                          const SizedBox(height: 40),
                          CustomButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                MainApp.routeName,
                                (route) => false,
                              );
                            },
                            widget: const Text('Sign Up'),
                          ),
                          const SizedBox(height: 30),
                          HaveAccount(
                            onTap: () =>
                                Navigator.of(context).pushNamed(LoginScreen.routeName),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
