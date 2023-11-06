import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JourneyButton extends StatelessWidget {
  const JourneyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, '/registerPage');
      },
      child: Container(
        height: 70,
        width: 261,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          'JOURNEY',
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
