import 'package:appgaming/src/features/authentication/screens/select_gender/select_gender.dart';
import 'package:flutter/material.dart';

import 'package:appgaming/src/constants/text_strings.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 1, 51),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                phoneText1,
                style: GoogleFonts.roboto(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                phoneText2,
                style: GoogleFonts.roboto(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const SizedBox(
                height: 23,
              ),
              OtpTextField(
                numberOfFields: 5,
                fillColor: const Color.fromARGB(218, 247, 247, 247),
                filled: true,
              ),
              const SizedBox(
                height: 90,
              ),
              SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Get.to(() => const SelectGender());
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't recieve your code?",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
