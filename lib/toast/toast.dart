import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toast extends StatelessWidget {
  const toast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            Center(
              child: Text(
                "Arpan was looking ? ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(),
              child: Text("Goodlooking"),
              onPressed: showtoast,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(),
              child: Text("Badlooking"),
              onPressed: showagaintoast,
            ),
          ],
        ),
      ),
    );
  }

  void showtoast() =>
      Fluttertoast.showToast(msg: "Arpan Is Goodlooking", fontSize: 10);

  void showagaintoast() =>
      Fluttertoast.showToast(msg: "Arpan is Badlooking", fontSize: 10);
}
