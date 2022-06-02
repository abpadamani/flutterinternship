import 'package:flutter/material.dart';
import 'package:internship/listview&gridview/gridd.dart';
import 'package:internship/snackbar/snackbar.dart';
import 'package:internship/align_widget/align.dart';
import 'package:internship/listview&gridview/listt.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Gridd(),
    );
  }
}
