import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

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
                SizedBox(
                  height: 50,
                ),
                Image(
                  image: AssetImage(gforotPW),
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  gforgot,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  gforgotPWPhone,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                SizedBox(
                  height: 40,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      keyboardType:
                          TextInputType.phone, // Set keyboardType to phone
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(85, 255, 255, 255),
                        filled: true,
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 290,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Get.to(() => const OTPScreen());
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('OTP sent!'),
                              duration: Duration(seconds: 3),
                              backgroundColor:
                                  const Color.fromARGB(255, 33, 34, 33),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
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
