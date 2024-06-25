import 'package:flutter/material.dart';
import 'package:login_signin_form/widgets/welcome_scaffold.dart';

import '../other/app_colors.dart';
import '../other/app_string.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      child: Text(AppStrings.signin,style: TextStyle(color: AppColors.accentColor),),
    );
  }
}