import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/constants/text_strings.dart';
import 'package:appgaming/src/features/authentication/screens/login_screen/login_form_footer_widget.dart';
import 'package:appgaming/src/features/authentication/screens/login_screen/login_form_widget.dart';
import 'package:appgaming/src/features/authentication/screens/login_screen/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 1, 51),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.only(top: 130, right: 30, left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [LoginHeaderWidget(), LoginForm(), LoginFormFooter()],
          ),
        )),
      ),
    );
  }
}
