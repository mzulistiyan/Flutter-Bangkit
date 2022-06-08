import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_bangkit_capstone/ui/main_page.dart';
import 'package:flutter_application_bangkit_capstone/ui/onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingPageStep(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 80,
              height: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Konsultasi Dalam Satu Aplikasi',
              style: GoogleFonts.poppins(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
