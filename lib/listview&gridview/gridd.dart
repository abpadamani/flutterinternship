import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:internship/main.dart';

class Gridd extends StatelessWidget {
  const Gridd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mobile Setting",
      home: Mygrid(),
    );
  }
}

class Mygrid extends StatelessWidget {
  const Mygrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.wifi,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 59),
                  child: Text(
                    "Wi-Fi",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.device_phone_portrait,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 59),
                  child: Text(
                    "Devices",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.location,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 50),
                  child: Text(
                    "Location",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.settings,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 50),
                  child: Text(
                    "Additional",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.battery_100,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 50),
                  child: Text(
                    "Battery",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.mail,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 59),
                  child: Text(
                    "E-mail",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.phone,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 59),
                  child: Text(
                    "Call",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    CupertinoIcons.phone_fill_arrow_right,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 130, left: 59),
                  child: Text(
                    "Logs",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
