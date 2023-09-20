import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_task/constants/colors.dart';

import 'welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomeScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: myGreen,
      body: Column(
        children: [
          const SizedBox(height: 300,),
          Padding(
            padding: const EdgeInsets.only(left: 33),
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}
