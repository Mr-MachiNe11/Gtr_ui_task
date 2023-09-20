import 'package:flutter/material.dart';
import 'package:ui_task/constants/colors.dart';

import 'screens/intro_screens/splash_screen.dart';
import 'screens/intro_screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: myGreen),
      ),
      home: const SplashScreen(),
    );
  }
}

