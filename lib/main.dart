import 'package:flutter/material.dart';
import 'package:internship/pass-retrive-data/page2.dart';
import 'pass-retrive-data/page1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}
