import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class Raisedbtnn extends StatelessWidget {
  const Raisedbtnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Win Lottery - Raised Button"),
        ),
        body: Center(
          child: Raisedbtnnn(),
        ));
  }
}

class Raisedbtnnn extends StatelessWidget {
  const Raisedbtnnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      elevation: 10.0,
      color: Colors.lightGreen,
      splashColor: Colors.orange,
      highlightColor: Colors.amberAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Text("Win"),
    ));
  }
}
