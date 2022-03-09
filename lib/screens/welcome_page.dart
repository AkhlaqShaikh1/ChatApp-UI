import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rafay_chat_app/screens/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static String id = "/welcome_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, LoginPage.id),
        child: Center(
          child: Lottie.asset("assets/animations/welcome-animation.json"),
        ),
      ),
    );
  }
}
