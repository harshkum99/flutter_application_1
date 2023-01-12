// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
            "WELCOME $name",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: " Enter Password", labelText: "Password"),
              ),
              SizedBox(
                height: 40.0,
              ),

              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 60.0 : 130.0,
                  height: 50.0,
                  alignment: Alignment.center,
                  // ignore: sort_child_properties_last
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),

                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8)),
                ),
              ),

              //ElevatedButton(
              // ignore: sort_child_properties_last
              //child: Text("Login"),
              //style: TextButton.styleFrom(minimumSize: Size(130, 40)),
              //onPressed: () {
              //  Navigator.pushNamed(context, MyRoutes.homeRoute);
              //},
              //),
            ]),
          ),
        ],
      ),
    );
  }
}
