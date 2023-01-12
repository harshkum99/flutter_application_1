// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "WELCOME",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(children: [
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: " Enter e-mail", labelText: "E-mail"),
              ),
              TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: " Enter Phone no.", labelText: "Phone no."),
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: " Enter Username", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: " Enter Password", labelText: "Password"),
              ),
              SizedBox(
                height: 40.0,
              ),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
