// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catalogue.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalog.image).py32().pOnly(left: 28),
            catalog.name.text.make().centered(),
            HeightBox(15),
            catalog.desc.text.make().centered(),
            HeightBox(10),
            "\$${catalog.price}".text.bold.lg.make().centered(),
            HeightBox(30),
            Row(children: [
              SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(onPressed: (() {}), child: "WISHLIST".text.make()).pOnly(left: 25).pOnly(right: 20),
              ),
              SizedBox(height: 60, width: 170, child: ElevatedButton(onPressed: (() {}), child: "BUY NOW".text.make()).pOnly(left: 5))
            ])
          ],
        ),
      ),
    );
  }
}
