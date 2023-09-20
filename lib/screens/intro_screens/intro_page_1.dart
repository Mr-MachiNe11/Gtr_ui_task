import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({super.key});

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 85,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 34,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Image.asset("assets/images/ubazar_green.png"),
              ),
              const Text(
                'Application',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 50.0),
                child: Image.asset("assets/images/shopping.png"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
