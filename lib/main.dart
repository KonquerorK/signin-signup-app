import 'package:flutter/material.dart';
import 'package:login_signin_form/other/app_colors.dart';
import 'package:login_signin_form/screens/welcome_screen.dart';

import 'screens/signin_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.secondaryColor)
      ),
      // home: WelcomeScreen(),
      home: SignInScreen(),
    );
  }
}