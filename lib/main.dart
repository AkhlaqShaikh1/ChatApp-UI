import 'package:flutter/material.dart';
import 'package:rafay_chat_app/screens/profile.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App UI',
      debugShowCheckedModeBanner: false,
      // initialRoute: HomePage.id,
      routes: {
        "/": (context) => const HomePage(),
        HomePage.id: (context) => const HomePage(),
        ProfilePage.id: (context) => const ProfilePage(),
      },
    );
  }
}
