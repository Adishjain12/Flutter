import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/loginpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: homepage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => homepage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}
