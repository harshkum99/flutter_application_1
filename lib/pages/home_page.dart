// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalogue.dart';
import 'dart:convert';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    // ignore: avoid_print
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, ((index) => CatalogueModel.items[0]));
    return Scaffold(
        appBar: AppBar(
          title: Text("DEMO APK"),
        ),
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ));
    // ignore: unused_label, dead_code
    drawer:
    MyDrawer();
  }
}
