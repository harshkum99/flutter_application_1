// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogue.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DEMO APK"),
        ),
        body: ListView.builder(
          itemCount: CatalogueModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogueModel.items[index],
            );
          },
        ));
    // ignore: unused_label, dead_code
    drawer:
    MyDrawer();
  }
}
