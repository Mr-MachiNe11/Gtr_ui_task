import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({super.key});

  @override
  State<IntroPage3> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 85),
            child: Image.asset('assets/images/door_to_door.png'),
          ),
          SizedBox(height: 45,),
          Lottie.asset('assets/anims/delivery4.json')
        ],
      ),
    );
  }
}
