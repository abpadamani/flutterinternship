import 'package:flutter/material.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), backgroundColor: Colors.redAccent),
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(color: Colors.redAccent, fontSize: 30),
        ),
      ),
    );
  }
}
