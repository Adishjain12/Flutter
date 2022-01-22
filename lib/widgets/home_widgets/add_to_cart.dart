import 'package:flutter/material.dart';
import 'package:loginapp/core/store.dart';
import 'package:loginapp/models/cart.dart';
import 'package:loginapp/models/catalog.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
   // final CatalogModel? _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart!.items.contains(catalog) ? true : false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          //isInCart = isInCart.toggle();

          //_cart.catalog = _catalog!;
          AddMutation(catalog);
          // _cart.add(catalog);
          //setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor,
          ),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : "Add to Cart".text.make(),
    );
  }
}
