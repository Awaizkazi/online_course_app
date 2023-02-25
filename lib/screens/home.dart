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
        body: SingleChildScrollView(
          child: Column(
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
              BigContainer(),
              Center(
                child: Text(
                  'Categories',
                  style: GoogleFonts.acme(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoriesCard(
                    title: 'Drawing',
                    subTitle: '26 Courses',
                    imageCrad: 'assets/images/girldraw.png',
                  ),
                  CategoriesCard(
                    title: 'UI  / UX',
                    subTitle: '50 Courses',
                    imageCrad: 'assets/images/girldraw2.png',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular Courses',
                  style: GoogleFonts.aboreto(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              LargeContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageCrad;
  const CategoriesCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageCrad,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            imageCrad,
            alignment: Alignment.bottomCenter,
            height: 120,
          ),
        ],
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
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14.0, vertical: 8),
                    child: Text(
                      '50% OFF',
                      style: GoogleFonts.acme(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      '246+ Course',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8),
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
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: SizedBox(
                  width: 160,
                  child: Image.asset(
                    'assets/images/girl.png',
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              child: Icon(
                Icons.play_circle_outline,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LargeContainer extends StatelessWidget {
  const LargeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 369,
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 250, 234, 188),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 10),
                    child: Text(
                      'Complete UX/UI\n& App Design',
                      style: GoogleFonts.abyssinicaSil(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 120,
            height: 120,
            decoration: BoxDecoration(color: Color(0xffffe59c)),
          ),
        ],
      ),
    );
  }
}
