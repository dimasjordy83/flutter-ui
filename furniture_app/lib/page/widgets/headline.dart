import 'package:flutter/material.dart';
import 'package:furniture_app/page/widgets/category.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHeadline extends StatelessWidget {
  const MyHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 226,
              child: Text(
                'Discover the most modern furniture',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Color(0xFF4A4543)),
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            width: 310,
            child: MyCategory(),
          )
        ],
      ),
    );
  }
}
