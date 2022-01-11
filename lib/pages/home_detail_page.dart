import 'package:flutter/material.dart';
import 'package:loginapp/models/catalog.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl3.color(Colors.red).make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  MyTheme.darkBluishColor,
                ),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                )),
            child: "ADD TO CART".text.xl.make(),
          ).wh(140, 50)
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
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBluishColor)
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
