import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/phone_verification_screen/phone_verification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return Form(
      child: Container(
        //padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(85, 255, 255, 255),
                filled: true,
                prefixIcon: Icon(Icons.person_outline_outlined),
                prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                labelText: "Username",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(85, 255, 255, 255),
                filled: true,
                prefixIcon: Icon(Icons.person_outline_outlined),
                prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                labelText: "E-mail",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(
                    number.phoneNumber); // You can access the phone number here
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
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 182, 35, 35)),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(85, 255, 255, 255),
                  filled: true,
                  prefixIcon: Icon(Icons.fingerprint_outlined),
                  prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                  labelText: "Password",
                  labelStyle:
                      TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 182, 35, 35)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                      onPressed: null, icon: Icon(Icons.remove_red_eye_sharp))),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(85, 255, 255, 255),
                filled: true,
                prefixIcon: Icon(Icons.fingerprint_outlined),
                prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                labelText: "Confirm Password",
                labelStyle:
                    TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 182, 35, 35)),
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    // Update the state of the checkbox
                    _isChecked = value!;
                  },
                ),
                Text(
                  gSignupTitle3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                if (_isChecked)
                  Icon(
                    Icons.check,
                    color: const Color.fromARGB(255, 197, 32, 32),
                  ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    fixedSize: Size.fromHeight(55),
                    backgroundColor: Color.fromARGB(210, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Get.to(() => const PhoneVerificationScreen());
                  },
                  child: Text(
                    gSignupTitle2.toUpperCase(),
                    style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 0, 0, 0)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
