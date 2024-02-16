import 'package:appgaming/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:appyunash/src/features/authentication/screens/splash_screen/splash%20_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 1000),
      //theme: GAppTheme.lightTheme,
      //darkTheme: GAppTheme.lightTheme,
      //themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
