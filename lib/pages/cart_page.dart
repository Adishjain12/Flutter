import 'package:flutter/material.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: context.theme.accentColor),
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 30, color: context.theme.accentColor),
        ),
      ),
      backgroundColor: context.theme.canvasColor,
    );
  }
}
