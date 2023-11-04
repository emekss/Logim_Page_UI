import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:login_page_ui/util/circle_wallpaper.dart';
import 'package:login_page_ui/util/signIn_button.dart';
import 'package:login_page_ui/util/signUp_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

// sign in button

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailcontroller.text.trim(),
      password: _passwordcontroller.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      hintText: 'Email ID',
                      hintStyle: GoogleFonts.poppins(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Center(
              child: GestureDetector(
                onTap: signIn,
                child: const SignUpButton(),
              ),
            ),
          ),
          const Row(
            children: [Text('Already a Member')],
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
