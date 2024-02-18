import 'package:appgaming/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 1, 51),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(image: AssetImage(gUpdateProfile)),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.amber),
                        child: const Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Supun Perera",
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 250, 250, 250),
                      fontSize: 20),
                ),
                Text(
                  "supunperera@gmail.com",
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(85, 255, 255, 255),
                        filled: true,
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                        labelText: "Username",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(85, 255, 255, 255),
                        filled: true,
                        prefixIcon: Icon(Icons.person_outline_outlined),
                        prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        print(number
                            .phoneNumber); // You can access the phone number here
                      },
                      selectorConfig: SelectorConfig(
                        selectorType: PhoneInputSelectorType.DIALOG,
                      ),
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: TextStyle(
                          color: const Color.fromARGB(255, 218, 214, 214),
                          fontSize: 15),
                      initialValue: PhoneNumber(isoCode: 'US'),
                      inputDecoration: InputDecoration(
                          fillColor: Color.fromARGB(85, 255, 255, 255),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 182, 35, 35)),
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          fillColor: Color.fromARGB(85, 255, 255, 255),
                          filled: true,
                          prefixIcon: Icon(Icons.fingerprint_outlined),
                          prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 182, 35, 35)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      decoration: InputDecoration(
                        fillColor: Color.fromARGB(85, 255, 255, 255),
                        filled: true,
                        prefixIcon: Icon(Icons.fingerprint_outlined),
                        prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 182, 35, 35)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye_sharp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 140,
                    ),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          // Navigator.pop(context);
                          // Get.to(() => DateOfBirthScreen());
                        },
                        child: Text(
                          'Save',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),

                // Positioned(
                //     bottom: 0,
                //     right: 0,
                //     child: Container(
                //       width: 35,
                //       height: 35,
                //     )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
