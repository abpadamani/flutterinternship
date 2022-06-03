import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myswitch extends StatefulWidget {
  const Myswitch({Key? key}) : super(key: key);

  @override
  State<Myswitch> createState() => _MyswitchState();
}

class _MyswitchState extends State<Myswitch> {
  bool switchstatus = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Settings - Switch"),
        ),
        body: Column(
          children: [
            SizedBox(height: 30),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wi-Fi",
                    style: TextStyle(fontSize: 20),
                  ),
                  Switch(
                      value: switchstatus,
                      onChanged: (bool ischecked) {
                        setState(() {
                          switchstatus = ischecked;
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
