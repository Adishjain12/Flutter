import 'package:flutter/material.dart';
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
          primarySwatch: Colors.deepPurple, brightness: Brightness.light),
      initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => homepage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}
