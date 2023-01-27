import 'package:flutter/material.dart';
import 'package:massar_app/screens/auth/register/register_screen.dart';
import 'package:massar_app/screens/widgets/custom_button.dart';
import 'package:massar_app/screens/widgets/password_input_field.dart';
import 'package:massar_app/screens/widgets/text_input_field.dart';
import 'package:massar_app/theme/custom_color.dart';

import 'widgets/create_new_account.dart';
import 'widgets/forgot_password_button.dart';
import 'widgets/login_info_text.dart';
import 'widgets/remember_me.dart';
import 'widgets/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  bool _obscureLoginPasswordText = true;
  bool _isChecked = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                children: const [WelcomeText(), LoginInfoText()],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.75,
              minChildSize: 0.75,
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
                      key: _loginFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextInputField(
                            controller: _emailController,
                            labelText: 'Your Email Address',
                            inputType: TextInputType.emailAddress,
                            inputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 20),
                          PasswordInputField(
                            controller: _passwordController,
                            labelText: 'Password',
                            inputAction: TextInputAction.done,
                            obscureText: _obscureLoginPasswordText,
                            toggle: () => setState(() =>
                                _obscureLoginPasswordText = !_obscureLoginPasswordText),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RememberMe(
                                isChecked: _isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              ForgotPasswordButton(onTap: () {}),
                            ],
                          ),
                          const SizedBox(height: 40),
                          CustomButton(
                            onPressed: () {},
                            widget: const Text('Sign In'),
                          ),
                          const SizedBox(height: 30),
                          CreateNewAccount(
                            onTap: () =>
                                Navigator.of(context).pushNamed(RegisterScreen.routeName),
                          ),
                          const SizedBox(height: 20),
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
