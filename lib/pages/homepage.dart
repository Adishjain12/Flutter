import 'package:flutter/material.dart';
import 'package:loginapp/widgets/drawer.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Adish";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
          child: Container(
        child: Text(
          "Flutter tutorial of $days days by $name",
          style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),
        ),
      )),
      drawer: MyDrawer(),
    );
  }
}
