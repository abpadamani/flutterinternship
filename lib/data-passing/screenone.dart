import 'package:flutter/material.dart';

class Myscreenone extends StatelessWidget {
  String email;
  String password;

  Myscreenone({required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Center(
        child: Column(
          children: [
            Text('E-mail : $email'),
            Text('Name : $password'),
          ],
        ),
      ),
    );
  }
}
