import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffcef0ff),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Text(
                    'Online Course',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  'Noursish your\n    inner skills',
                  style: GoogleFonts.acme(fontSize: 25.0),
                ),
                Text(
                  'Choose your favorite course\n         and start learning',
                  style: TextStyle(
                    height: 2.2,
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: () {},
                        child: Text(
                          'Join',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/man.png',
                  fit: BoxFit.cover,
                  width: 400,
                  height: 390,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
