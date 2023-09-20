import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../home_page.dart';
import 'intro_page_1.dart';
import 'intro_page_2.dart';

import 'intro_page_3.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                          },
                          child: const Text('Done'))
                      : GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: const Text('Skip')),
                  SmoothPageIndicator(controller: _controller, count: 3),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                          },
                          child: const Text('Go'))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text('Next')),
                ],
              ))
        ],
      ),
    );
  }
}
