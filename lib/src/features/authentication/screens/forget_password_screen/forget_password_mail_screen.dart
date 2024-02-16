import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 1, 51),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Image(
                  image: AssetImage(gforotPW),
                  height: 150,
                  width: 150,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  gforgot,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  gforgotPWEmail,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(85, 255, 255, 255),
                        filled: true,
                        prefixIcon: const Icon(Icons.mail_lock_outlined),
                        prefixIconColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        labelText: "E-mail",
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )),
                const SizedBox(
                  height: 290,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Get.to(() => const OTPScreen());
                          // Show SnackBar when the button is pressed
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('OTP sent!'),
                              duration: Duration(seconds: 3),
                              backgroundColor: Color.fromARGB(255, 33, 34, 33),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text(
                          "Send OTP",
                          style: TextStyle(fontSize: 20),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
