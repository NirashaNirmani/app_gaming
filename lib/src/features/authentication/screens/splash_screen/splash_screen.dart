import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:appgaming/src/constants/colors.dart';
import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/sizes.dart';
import 'package:appgaming/src/features/authentication/controllers/splash_screen_controller.dart';
//import 'package:appyunash/src/features/authentication/screens/splash_screen/welcome.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController = Get.put(SplashScreenController());

  //bool animate = false;
  @override
  Widget build(BuildContext context) {
    SplashController.startAnimation();
    return Scaffold(
      backgroundColor: gSplashColor,
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: SplashController.animate.value ? 250 : -30,
                left: SplashController.animate.value ? 70 : -30,

                // left: 70,
                child: const Image(
                  image: AssetImage(gSplashTopLogo),
                  height: Gsizes.imageSplashHeight,
                  width: Gsizes.imageSplashWidth,
                )),
          ),
          Obx(
            () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: SplashController.animate.value ? 250 : -30,
                left: SplashController.animate.value ? 130 : -30,
                // bottom: 200,
                // left: 150,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Gaming",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: gText1),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Powered by Yunash",
                      style: TextStyle(fontSize: 15, color: gText2),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
