import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:massar_app/theme/custom_theme.dart';
import 'package:page_transition/page_transition.dart';

import 'router.dart';
import 'screens/auth/login/login_screen.dart';
import 'screens/widgets/logo.dart';
import 'theme/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Massar',
      theme: CustomTheme.theme,
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: const Logo(
          firstColor: Colors.white,
          secondColor: CustomColor.buttonColor,
          fontSize: 50,
        ),
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.scaleTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: CustomColor.primaryColor,
        centered: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
