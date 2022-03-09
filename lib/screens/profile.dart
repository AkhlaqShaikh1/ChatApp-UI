import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static String id = "/profile_page";

  @override
  Widget build(BuildContext context) {
    int _index = 1;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        currentIndex: 1,
        selectedItemColor: Colors.red[400],
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                if (_index == 1) {
                  Navigator.pop(context);
                }
              },
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 80,
                alignment: Alignment.center,
                child: const Text(
                  "PROFILE",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Center(
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage("assets/p2.jpg"),
              ),
            ),
            const TitleWidget(title: "Name"),
            const TextWidget(text: "Karrigan"),
            const SizedBox(height: 15),
            const TitleWidget(title: "Phone Number"),
            const TextWidget(text: "+123 456 789"),
            const SizedBox(height: 15),
            const TitleWidget(title: "Description"),
            const TextWidget(
                text:
                    "Prieghi che mortali e sí di che. Spezial sono non dalla cosí cosa mossa, nondimeno udita ripararci noi d'angoscia dell'occhio."),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 8),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.acme().fontFamily,
            color: Colors.black87),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontSize: 25,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
