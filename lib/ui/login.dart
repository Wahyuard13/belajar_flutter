import 'dart:ui';

import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: window.physicalSize.width,
            height: window.physicalSize.height,
            color: Colors.red,
          ),
          Container(
            width: window.physicalSize.width,
            height: window.physicalSize.height * 0.275,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
