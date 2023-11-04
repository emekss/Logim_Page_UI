import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page_ui/util/journey_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Welcome to',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 50,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'study ',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'IN',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 70),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Let\'s Begin Your',
            style: GoogleFonts.poppins(fontSize: 40),
          ),
          const SizedBox(height: 20),
          const JourneyButton(),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  size: 25,
                ),
              ),
              Text(
                'back',
                style: GoogleFonts.poppins(fontSize: 25),
              )
            ],
          )
        ],
      ),
    );
  }
}
