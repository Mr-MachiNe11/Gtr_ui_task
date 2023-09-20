import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({super.key});

  @override
  State<IntroPage2> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 85),
            child: Image.asset('assets/images/fast.png'),
          ),
          SizedBox(height: 105,),
          Lottie.asset('assets/anims/del_bike.json')

        ],
      ),
    );
  }
}
