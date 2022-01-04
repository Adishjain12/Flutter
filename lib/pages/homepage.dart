import 'package:flutter/material.dart';
import 'package:loginapp/models/catalog.dart';
import 'package:loginapp/widgets/drawer.dart';
import 'package:loginapp/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Adish";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
              key: null,
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
