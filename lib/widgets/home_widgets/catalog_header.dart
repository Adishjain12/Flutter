import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/utils/routes.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          "Catalog App".text.xl4.bold.color(context.theme.accentColor).make(),
          "Trending products".text.xl.color(context.theme.accentColor).make(),
        ]),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(left: 60, top: 11),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
            backgroundColor: context.theme.buttonColor,
          ),
        ))
      ],
    );
  }
}
