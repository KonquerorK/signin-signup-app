
import 'package:flutter/material.dart';


class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key, this.buttonText, this.onTap, this.bgColor,
    this.txtColor,
  });

  final String? buttonText;
  final Widget? onTap;
  final Color? bgColor, txtColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (e)=> onTap!
        ));
      },
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: bgColor!,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50)
          )
        ),
        child: Text(
          buttonText!,
          textAlign: TextAlign.center,
          style:  TextStyle(
            color: txtColor!,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
