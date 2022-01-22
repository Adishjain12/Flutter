import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginapp/core/store.dart';
import 'package:loginapp/pages/cart_page.dart';
import 'package:loginapp/utils/routes.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/loginpage.dart';
import 'package:loginapp/pages/homepage.dart';

void main() {
  runApp(VxState(store: MyStore(),child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: homepage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => loginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
