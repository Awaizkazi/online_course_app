import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffcef0ff),
        body: Center(
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
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              Text(
                'Choose your favorite course\n       and start learning',
                style: TextStyle(
                  height: 2.2,
                  fontSize: 14,
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Text(
                  'Join',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Image.asset('assets/images/man.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
