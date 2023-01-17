import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageURL =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F000%2F439%2F863%2Foriginal%2Fvector-users-icon.jpg&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Fuser-avatar&tbnid=1CA8jr9jkE7GgM&vet=12ahUKEwi41arsps78AhXDSXwKHe4nBGAQMygAegUIARDiAQ..i&docid=GX3OEghUv3ZhTM&w=5120&h=5120&q=user%20avatar&ved=2ahUKEwi41arsps78AhXDSXwKHe4nBGAQMygAegUIARDiAQ";
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
                // ignore: prefer_const_constructors
                accountName: Text("Harsh Kumar"),
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
