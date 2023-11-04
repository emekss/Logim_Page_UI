import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_ui/util/circle_wallpaper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Text(
                  'SIGNED IN SUCCESSFULLY',
                  style: GoogleFonts.poppins(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
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
