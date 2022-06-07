import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://avatars.githubusercontent.com/u/93420625?s=400&u=4f5a5f4a899c81d5790df151be4eb805019e2b1c&v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Arpan Padamani"),
              accountEmail: Text("arpanpadamani2000@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.phone),
            title: Text(
              "Call Now",
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              "Mail Now",
              textScaleFactor: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
