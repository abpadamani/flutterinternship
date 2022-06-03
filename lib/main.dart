import 'package:flutter/material.dart';
import 'package:internship/dropdownbox/dropdown.dart';
import 'package:internship/flatbtn/flatbtn.dart';
import 'package:internship/nesting.dart';
import 'package:internship/snackbar/snackbar.dart';
import 'package:internship/flatbtn/flatbtn.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Flatbtnn(),
    );
  }
}
