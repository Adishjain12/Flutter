import 'package:flutter/material.dart';
import 'package:loginapp/models/catalog.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:loginapp/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl3.color(context.accentColor).make(),
          AddToCart(catalog: catalog).wh(140, 50)
        ],
      ).p16(),
      body: Container(
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Container(
                    height: 300,
                    child: Center(child: Image.network(catalog.image)))),
            Expanded(
                child: VxArc(
              height: 10,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog
                        .desc.text /*.textStyle(context.captionStyle)*/ .make(),
                    "Sea diam accusam clita lorem magna stet ea rebum. Invidunt nonumy sit nonumy eos invidunt amet aliquyam, ea sit sanctus accusam et, ipsum sanctus dolor sit erat magna sanctus est. Eirmod sit "
                        .text
                        .make()
                        .p12(),
                  ],
                ).py20(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
