import 'dart:async';

import 'package:flutter/material.dart';

class Mystream extends StatefulWidget {
  const Mystream({Key? key}) : super(key: key);

  @override
  State<Mystream> createState() => _MystreamState();
}

class _MystreamState extends State<Mystream> {
  int counter = 0;
  StreamController countercontroller = StreamController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stream Builder"),
      ),
      body: SafeArea(
          child: Center(
        child: StreamBuilder(
          stream: countercontroller.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              );
            } else {
              return Text(
                "0",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              );
            }
          },
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          countercontroller.sink.add(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
