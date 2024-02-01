import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHeadline extends StatelessWidget {
  const MyHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            width: 226,
            child: Text(
              'Discover the most modern furniture',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: Color(0xFF4A4543)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
