import 'package:flutter/material.dart';

class Mysearch extends StatelessWidget {
  const Mysearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search"), backgroundColor: Colors.redAccent),
      body: Center(
        child: Text(
          "Search",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
      ),
    );
  }
}
