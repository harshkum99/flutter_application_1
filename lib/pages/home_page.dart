// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_null_comparison

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
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogueModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEMO APK"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
                  ? ListView.builder(
                      itemCount: CatalogueModel.items.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(
                          item: CatalogueModel.items[index],
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    )),
      drawer: MyDrawer(),
    );
    // ignore: unused_label, dead_code
  }
}
