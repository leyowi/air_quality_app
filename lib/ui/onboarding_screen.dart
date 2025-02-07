import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,63,112,251),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255,63,112,251),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: InkWell(
              onTap: () => null, // to login screen
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.asset('assets/BLUE LOGO.png'),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
