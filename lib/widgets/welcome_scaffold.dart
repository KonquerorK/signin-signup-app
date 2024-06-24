import 'package:flutter/material.dart';

import '../other/app_images.dart';

class CustomScaffold extends StatelessWidget {


  final Widget? child;

  const CustomScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            AppImages.bg1,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: child!
          )
        ],
      ),
    );
  }
}