import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageURL =
        "https://static.vecteezy.com/system/resources/thumbnails/005/544/770/small/profile-icon-design-free-vector.jpg";
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              // ignore: prefer_const_constructors
              child: UserAccountsDrawerHeader(
                decoration:
                    // ignore: prefer_const_constructors
                    BoxDecoration(color: Colors.black),

                accountName: const Text("Harsh Kumar"),
                // ignore: prefer_const_constructors
                accountEmail: Text("harshkum1899@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                "E-mail Me",
                textScaleFactor: 1.2,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
