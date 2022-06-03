import 'package:flutter/material.dart';
import 'package:internship/pass-retrive-data/page1.dart';

class Screentwo extends StatelessWidget {
  String value;
  Screentwo({required this.value});
  // const Screentwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen2"),),
      body: Center( 
        child: Text(value),
      ),
    );
  }
}