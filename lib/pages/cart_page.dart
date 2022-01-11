import 'package:flutter/material.dart';
import 'package:loginapp/widgets/Themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 30),
        ),
      ),
      backgroundColor: MyTheme.creamColor,
    );
  }
}
