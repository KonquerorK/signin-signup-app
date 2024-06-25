import 'package:flutter/material.dart';
import 'package:login_signin_form/other/app_colors.dart';
import 'package:login_signin_form/other/app_string.dart';
import 'package:login_signin_form/widgets/welcome_scaffold.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return 
    return const CustomScaffold(
      child: Text(AppStrings.signup,style: TextStyle(color: AppColors.accentColor),),
    );
  }
}