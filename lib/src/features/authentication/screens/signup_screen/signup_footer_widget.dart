import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpFormFooter extends StatelessWidget {
  const SignUpFormFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),

        const Text(
          "OR",
          style: TextStyle(
              color: Color.fromARGB(255, 145, 144, 144), fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Sign in with",
          style: TextStyle(
              color: Color.fromARGB(255, 243, 243, 243), fontSize: 18),
        ),
        const SizedBox(
          height: 30,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                gLoginGoogle,
                width: 150,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                gLoginfacebook,
                width: 150,
                height: 50,
              ),
            ),
          ],
        ),

        const SizedBox(
          height: 65,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              gLoginTitle5,
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) =>
                  //           SignUpScreen()), // Replace SignupPage with the actual widget for your signup page
                  // );
                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Color.fromARGB(255, 9, 128, 240),
                  ),
                ))
          ],
        )

        // Button(
        //     onPressed: () {},
        //     child: Image(
        //       image: AssetImage(gLoginGoogle),
        //       height: 20,
        //       width: 20,
        //     ))
      ],
    );
  }
}
