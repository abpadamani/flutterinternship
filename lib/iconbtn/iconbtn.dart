import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class Iconbtnn extends StatelessWidget {
  const Iconbtnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Power Board - Icon Button"),
        ),
        body: Center(
          child: Iconbtnnn(),
        ));
  }
}

class Iconbtnnn extends StatelessWidget {
  const Iconbtnnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: IconButton(
      icon: Icon(CupertinoIcons.power),
      color: Colors.lightGreen,
      splashColor: Colors.black,
      highlightColor: Colors.black,
      onPressed: () {},
    ));
  }
}
