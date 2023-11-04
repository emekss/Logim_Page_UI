import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 157,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          'Sign in',
          style: GoogleFonts.poppins(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
