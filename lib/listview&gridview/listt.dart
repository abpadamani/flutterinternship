import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class Listt extends StatelessWidget {
  const Listt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView OR SETTINGS',
      home: Listsetting(),
    );
  }
}

class Listsetting extends StatelessWidget {
  const Listsetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView OR SETTINGS"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(CupertinoIcons.wifi),
            title: Text("Wi-Fi"),
            trailing: Text(
              "OFF",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.smallcircle_circle),
            title: Text(
              "Mobile Data",
            ),
            trailing: Text("ON", style: TextStyle(color: Colors.red)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.location),
            title: Text("Location"),
            trailing: Text("OFF", style: TextStyle(color: Colors.blueGrey)),
          ),
        ],
      ),
    );
  }
}
