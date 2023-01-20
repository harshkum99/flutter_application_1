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
            Text(catalog.name).py8().pOnly(left: 28),
            Text(catalog.desc).pOnly(left: 28)
          ],
        ),
      ),
    );
  }
}
