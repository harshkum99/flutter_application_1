// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 7;
    return Scaffold(
      appBar: AppBar(
        title: Text("FORM-1"),
      ),
      body: Center(
        child: Text("Welcome to my first $days days in flutter"),
      ),
      drawer: Drawer(),
    );
  }
}
