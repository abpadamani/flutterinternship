import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
      ),
    );
  }
}
