import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hi Rakib',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.pink,
                    backgroundImage: NetworkImage(
                        'https://freepngimg.com/thumb/man/22654-6-man-thumb.png'),
                  ),
                ),
              ],
            ),
            Text(
              'Find Your Course',
              style: GoogleFonts.acme(fontSize: 29),
            ),
            BigContainer()
          ],
        ),
      ),
    );
  }
}

class BigContainer extends StatelessWidget {
  const BigContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: 360,
      height: 170,
      decoration: BoxDecoration(
        color: Color(0xffcef0ff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
            child: Text(
              '50% OFF',
              style: GoogleFonts.acme(
                fontSize: 40,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              '246+ Course',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text(
                'Enroll Now',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black, // <-- SEE HERE
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
