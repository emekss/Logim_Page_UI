import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_ui/util/circle_wallpaper.dart';
import 'package:login_page_ui/util/join_us_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: -80,
            left: -80,
            child: CircleObject(
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'study ',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'IN',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 60,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 380,
            right: -80,
            child: CircleObject(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 35, right: 35),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Create Username',
                    hintStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Create Password',
                    hintStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email ID',
                    hintStyle: GoogleFonts.poppins(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 400),
            child: Center(child: JoinUsButton()),
          ),
          const Positioned(
            top: 780,
            right: -80,
            child: CircleObject(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
