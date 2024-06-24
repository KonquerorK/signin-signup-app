
import 'package:flutter/material.dart';

import '../other/app_colors.dart';
import '../screens/signup_screen.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key, this.buttonText,
  });

  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (e)=> SignUpScreen()));
      },
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50)
          )
        ),
        child: Text(
          buttonText!,
          style: const TextStyle(
            color: AppColors.secondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
