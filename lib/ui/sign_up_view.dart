import 'dart:ui';

import 'package:belajar_flutter/ui/widgets/spacings.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: window.physicalSize.width,
            height: window.physicalSize.height,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 65,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 41,
                      width: 60,
                    ),
                    Spacings.hSpace(13),
                    const Text(
                      'Consult',
                      style: TextStyle(
                        color: Color(0xFF019874),
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: window.physicalSize.width,
            height: window.physicalSize.height * 0.275,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  40,
                ),
                topRight: Radius.circular(
                  40,
                ),
              ),
              color: Color.fromARGB(255, 85, 159, 123),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Spacings.vSpace(48),
                    const Text(
                      'Register with us!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacings.vSpace(33),
                    const Text(
                      'Your information is safe with us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacings.vSpace(30),
                    _buildTextField(
                      controller: _fullNameController,
                      hint: 'Enter your full name',
                    ),
                    Spacings.vSpace(12),
                    _buildTextField(
                      controller: _emailController,
                      hint: 'Enter  your email',
                    ),
                    Spacings.vSpace(12),
                    _buildTextField(
                      controller: _passwordController,
                      hint: 'Enter  your password',
                    ),
                    Spacings.vSpace(12),
                    _buildTextField(
                      controller: _confirmPasswordController,
                      hint: 'Confirm your password',
                    ),
                    Spacings.vSpace(12),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ),
                      ),
                      child: Container(
                        width: 340,
                        height: 51,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                          color: Color(0xFF2FB176),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacings.vSpace(30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
  }) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          focusColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          fillColor: Colors.white,

          hintText: hint,
          //make hint text
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
