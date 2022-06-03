import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class Flatbtnn extends StatelessWidget {
  const Flatbtnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Win Lottery - FlatButton"),
        ),
        body: Center(
          child: Flatbtnnn(),
        ));
  }
}

class Flatbtnnn extends StatelessWidget {
  const Flatbtnnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          color: Colors.black,
          highlightColor: Colors.blue,
          splashColor: Colors.red,
          onPressed: () {},
          child: Text(
            "Win",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
    );
  }
}
