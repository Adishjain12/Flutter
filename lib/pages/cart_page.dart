/*import 'package:flutter/material.dart';
import 'package:loginapp/widgets/Themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';

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
      body: Column(
        children: [_cartList().p32(), Divider(), _cartTotal()],
      ),
      backgroundColor: context.theme.canvasColor,
    );
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.make(),
          )
        ],
      ),
    );
  }
}

class _cartList extends StatefulWidget {
  const _cartList({Key? key}) : super(key: key);

  @override
  __cartListState createState() => __cartListState();
}

class __cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {},
              ),
              title: "Item 1".text.make(),
            ));
  }
}*/

import 'package:flutter/material.dart';
import 'package:loginapp/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.theme.accentColor).xl3.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}"
              .text
              .xl4
              .color(context.theme.accentColor)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "Buying not supported yet".text.make()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Cart is Empty".text.xl3.make().centered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                 // setState(() {});
                },
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
