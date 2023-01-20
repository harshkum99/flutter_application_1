// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, implementation_imports, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/catalogue.dart';
import '../widgets/item_widget.dart';

class ListHome extends StatelessWidget {
  const ListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: (CatalogueModel.items != null && CatalogueModel.items.isNotEmpty)
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
            ),
    ));
  }
}
