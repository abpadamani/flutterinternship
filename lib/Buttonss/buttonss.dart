import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class Mybuttons extends StatefulWidget {
  const Mybuttons({Key? key}) : super(key: key);

  @override
  State<Mybuttons> createState() => _MybuttonsState();
}

class _MybuttonsState extends State<Mybuttons> {
  int countbadge = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GF"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Badge(
                  toAnimate: false,
                  badgeColor: Colors.redAccent,
                  badgeContent: Text(
                    '$countbadge',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: ButtonTheme(
                    minWidth: 200,
                    height: 50,
                    child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            countbadge++;
                          });
                        },
                        child: Text(
                          "Badge Button",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
