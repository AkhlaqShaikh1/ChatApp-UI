import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:rafay_chat_app/screens/home_page.dart';

import 'sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // keybaord overflow
      body: SafeArea(
        child: Column(
          children: [
            Lottie.asset(
              "assets/animations/31938-welcome.json",
              repeat: true,
              height: 250,
            ),
            const SizedBox(height: 30),
            CustomInputFields(
              controller: _usernameController,
              text: "Username",
            ),
            CustomInputFields(
              controller: _passwordController,
              text: "Password",
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[300]!,
                    // Colors.indigo,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: GoogleFonts.lora().fontFamily,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: "Not a user?",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.id);
                  },
                  child: Text(
                    "Register",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomInputFields extends StatelessWidget {
  const CustomInputFields(
      {Key? key, required this.controller, required this.text})
      : super(key: key);

  final TextEditingController controller;
  final String text;

  _isVisible(text) {
    if (text == "Password") {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: _isVisible(text) ? true : false,
        decoration: InputDecoration(
          suffixIcon:
              _isVisible(text) ? const Icon(Icons.visibility_off) : null,
          fillColor: Colors.grey[200],
          filled: true,
          hintText: text,
          contentPadding: const EdgeInsets.only(left: 16.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
