import 'package:flutter/material.dart';

class Mylikes extends StatelessWidget {
  const Mylikes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Likes"), backgroundColor: Colors.redAccent),
      body: Center(
        child: Text(
          "Likes",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
      ),
    );
  }
}
