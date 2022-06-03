import 'package:flutter/material.dart';
import 'package:internship/dropdownbox/dropdown.dart';
import 'package:internship/flatbtn/flatbtn.dart';
import 'package:internship/nesting.dart';
import 'package:internship/radio/radiobtn.dart';
import 'package:internship/snackbar/snackbar.dart';
import 'package:internship/flatbtn/flatbtn.dart';
import 'package:internship/switch/switch.dart';
import 'raisedbtn/raisedbtn.dart';
import 'package:internship/iconbtn/iconbtn.dart';
import 'package:internship/radio/radiobtn.dart';
import 'textfield/textfield.dart';
import 'switch/switch.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myswitch(),
    );
  }
}
