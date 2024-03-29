import 'dart:ffi';

import 'package:appgaming/src/features/authentication/models/model_on_bording.dart';
import 'package:appgaming/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:appgaming/src/constants/colors.dart';
import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
//import 'package:appyunash/src/features/authentication/models/model_on_bording.dart';
import 'package:appgaming/src/features/authentication/screens/on_boarding_screens/on_boarding_screen_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      onBoardingPageWidget(
          model: OnBoardingModel(
              image: gOnBoardingImage1,
              title: gOnBordingTitle1,
              subtitle: gOnBordingSubTitle1,
              bgColor: gOnboardingBgColor1,
              height: size.height,
              counterText: '')),
      onBoardingPageWidget(
          model: OnBoardingModel(
              image: gOnBoardingImage2,
              title: gOnBordingTitle2,
              subtitle: gOnBordingSubTitle2,
              bgColor: gOnboardingBgColor2,
              height: size.height,
              counterText: '')),
      onBoardingPageWidget(
          model: OnBoardingModel(
              image: gOnBoardingImage3,
              title: gOnBordingTitle3,
              subtitle: gOnBordingSubTitle3,
              bgColor: gOnboardingBgColor3,
              height: size.height,
              counterText: ''))
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: OnPageChangedCallback,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            enableSideReveal: true,
          ),
          Positioned(
              bottom: 90,
              child: OutlinedButton(
                onPressed: () {
                  int nextPage = controller.currentPage + 1;
                  controller.animateToPage(page: nextPage);
                  if (nextPage == 3) {
                    // Navigate to the login screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Color.fromARGB(255, 85, 83, 172),
                    ),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(15),
                    onPrimary: Colors.white),
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 42, 36, 83),
                        shape: BoxShape.circle),
                    child: Icon(Icons.arrow_forward_ios)),
              )),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => controller.jumpToPage(page: 2),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 19, color: Color.fromARGB(255, 205, 202, 202)),
                ),
              )),
          Positioned(
              bottom: 20,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                effect: WormEffect(activeDotColor: Colors.yellow, dotHeight: 5),
                count: 3,
              ))
        ],
      ),
    );
  }

  OnPageChangedCallback(int activePageIndex) {
    setState(() {
      // if (activePageIndex == 2) {
      //   // Navigate to the sign-in screen when the user reaches the third page.
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) =>
      //             LoginScreen()), // Replace SignupPage with the actual widget for your signup page
      //   );
      // }
    });
    //currentPage = activePageIndex;
  }
}
