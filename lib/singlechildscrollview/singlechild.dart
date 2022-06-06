import 'package:flutter/material.dart';

class Mysingle extends StatelessWidget {
  const Mysingle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: 200,
                width: 200,
                child: Text("child 1"),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                height: 200,
                width: 200,
                child: Text("child 2"),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.cyan,
                height: 200,
                width: 200,
                child: Text("child 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
