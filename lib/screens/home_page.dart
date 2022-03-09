import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rafay_chat_app/screens/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static String id = "/home_page";

  final int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red[400],
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                if (_index == 1) {
                  Navigator.pushNamed(context, HomePage.id);
                }
              },
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
              activeIcon: const Icon(Icons.person),
              icon: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  Navigator.pushNamed(context, ProfilePage.id);
                },
              ),
              label: "Profile"),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Conversations",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15, top: 15, bottom: 15),
            height: 300,
            width: 90,
            decoration: BoxDecoration(
              color: Colors.pink[400]?.withOpacity(0.25),
              borderRadius: BorderRadius.circular(60),
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.add_outlined,
                    color: Colors.pink,
                    size: 20,
                  ),
                ),
                Text(
                  " Add New",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search..",
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const MyTile(
            img: "assets/s1mple_image.jpg",
            isBold: true,
            subtitle: "Good to know",
            title: "Alex",
            trailing: "Today",
          ),
          const MyTile(
            img: "assets/p9.jpg",
            isBold: false,
            subtitle: "its been a while",
            title: "Sameer",
            trailing: "Today",
          ),
          const MyTile(
            img: "assets/p1.jpg",
            isBold: false,
            subtitle: "Hey, where are you?",
            title: "Rezi Makarov",
            trailing: "Yesterday",
          ),
          const MyTile(
            img: "assets/p2.jpg",
            isBold: true,
            subtitle: "Its over!",
            title: "Bob Ryder",
            trailing: "28 Jan",
          ),
          const MyTile(
            img: "assets/p3.jpg",
            isBold: false,
            subtitle: "Good to know",
            title: "Karrigan",
            trailing: "24 Jan",
          ),
          const MyTile(
            img: "assets/p4.jpg",
            isBold: false,
            subtitle: "Going Out?",
            title: "Walkins",
            trailing: "19 Jan",
          ),
          const MyTile(
            img: "assets/p5.jpg",
            isBold: false,
            subtitle: "Attach the image and send it",
            title: "Gilbert",
            trailing: "12 Jan",
          ),
          const MyTile(
            img: "assets/p6.jpg",
            isBold: true,
            subtitle: "Hey I won the match. Lets party!!",
            title: "Lewis",
            trailing: "10 Jan",
          ),
          const MyTile(
            img: "assets/p7.jpg",
            isBold: true,
            subtitle: "Sup?",
            title: "Chad",
            trailing: "8 Jan",
          ),
        ],
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  const MyTile({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.isBold,
  }) : super(key: key);
  final String img, title, subtitle, trailing;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(img),
      ),
      subtitle: Text(subtitle),
      trailing: Text(
        trailing,
        style:
            TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
