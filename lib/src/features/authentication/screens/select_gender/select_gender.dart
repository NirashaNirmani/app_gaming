import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/date_of_birth/date_of_birth_screen.dart';

import 'package:appgaming/src/features/authentication/screens/select_gender/select_gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 1, 51),
        body: SafeArea(
          //top: true,

          child: Padding(
            padding: EdgeInsets.only(top: 100, right: 20, left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  gGenderText1,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                GenderWidget(
                  image1: gSelectG,
                  text: "Female",
                ),
                SizedBox(
                  height: 20,
                ),
                GenderWidget(
                  image1: gSelectB,
                  text: "Male",
                ),
                SizedBox(
                  height: 300,
                ),
                SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.to(() => DateOfBirthScreen());
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.abel(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    )),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
