import 'package:appgaming/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final String image1;
  final String text;

  const GenderWidget({
    Key? key,
    required this.image1,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 399,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Padding(
          //   padding: EdgeInsets.all(8),
          //   child: Container(
          //     color: Color.fromARGB(118, 243, 237, 237),
          //     height: 70,
          //     width: 70,
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(22),
          //       child: Image.asset(
          //         image1,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 80,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image1)),
                color: Color.fromARGB(255, 245, 243, 243).withOpacity(0.4),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                //child: Text(text),
              ),
            ),
          ),

          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      ),
    );
  }
}
