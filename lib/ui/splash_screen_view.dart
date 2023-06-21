import 'package:belajar_flutter/ui/widgets/spacings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 45,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    bottom: 58,
                  ),
                  child: Image.asset('assets/splash-image.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 36,
                    right: 36,
                    bottom: 112,
                  ),
                  child: Text(
                    'Search and consult your specialist doctor privately',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'Get your appointment now',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacings.vSpace(74),
                Container(
                  width: 300,
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
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Spacings.vSpace(36),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
