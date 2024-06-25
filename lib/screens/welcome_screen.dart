import 'package:flutter/material.dart';

import 'package:login_signin_form/other/app_colors.dart';
import 'package:login_signin_form/screens/signin_screen.dart';
import 'package:login_signin_form/screens/signup_screen.dart';

import '../other/app_string.dart';
import '../widgets/welcome_button.dart';
import '../widgets/welcome_scaffold.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.welcomeMsg,
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      )
                    ),
                    TextSpan(
                      text: AppStrings.subMsg,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primaryColor
                      )
                    ),
                    
                  ],
                ),  
              ),
            ),
          ),
        ),
         const Flexible(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              children: [
                Expanded(
                  child: WelcomeButton(
                    buttonText: AppStrings.signin,
                    onTap: SignInScreen(),
                    bgColor: Colors.transparent,
                    txtColor: AppColors.primaryColor,
                  )),
                Expanded(
                  child: WelcomeButton(
                    buttonText: AppStrings.signup,
                    onTap: SignUpScreen(),
                    bgColor: AppColors.primaryColor,
                    txtColor: AppColors.secondaryColor,
                )),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
