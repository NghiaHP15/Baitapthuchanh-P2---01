import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 90, 183, 71),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          title: Text.rich(TextSpan(
              text: 'Sign In',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          children: [
            _textFile("Username"),
            _textFile("Password"),
            RichText(
              textAlign: TextAlign.end,
              text: const TextSpan(children: [
                TextSpan(text: 'Forgot ', style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: 'Username',
                    style: TextStyle(color: Color.fromARGB(255, 90, 183, 71))),
                TextSpan(
                    text: '/',
                    style: TextStyle(color: Color.fromARGB(255, 90, 183, 71))),
                TextSpan(
                    text: 'Password?',
                    style: TextStyle(color: Color.fromARGB(255, 90, 183, 71)))
              ]),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 90, 183, 71),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
                onPressed: () {},
                child: Text('Sign In'.toUpperCase(),
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.all(30)),
            Text(
              "Don't have an account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 133, 133, 133),
                  fontWeight: FontWeight.w600),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'sign up now'.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 90, 183, 71),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }

  Widget _textFile(String context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            filled: true,
            fillColor: const Color(0xffececec),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hintText: context,
            hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 9, 56, 0))),
      ),
    );
  }
}
