import 'package:appgaming/src/constants/image_strings.dart';
import 'package:appgaming/src/features/authentication/screens/date_of_birth/date_of_birth_screen.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectAvatar extends StatefulWidget {
  const SelectAvatar({Key? key}) : super(key: key);

  @override
  _SelectAvatarState createState() => _SelectAvatarState();
}

class _SelectAvatarState extends State<SelectAvatar> {
  final images = [gSelectA1, gSelectA2, gSelectA3, gSelectA4];
  double _currentSliderValue = 0.0; // Initial value for the slider

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 1, 51),
        body: Padding(
          padding: const EdgeInsets.only(top: 180, right: 30, left: 30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Select Avatar",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = images[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    viewportFraction: 0.3,
                    initialPage: _currentSliderValue.toInt(),
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSliderValue = index.toDouble();
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: images.length.toDouble() - 1,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                  onChangeEnd: (double value) {
                    setState(() {
                      // Update the current image index when the slider movement ends
                      _currentSliderValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 170,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.pop(context);
                      Get.to(() => DateOfBirthScreen());
                    },
                    child: Text(
                      'Continue',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        height: 250,
        width: 250,
        margin: EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
            width: 250,
            height: 250,
          ),
        ),
      );
}
