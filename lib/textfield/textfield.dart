import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery Claim - Textfield"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Lottery Reward",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Lottery Number",
                label: Text("Lottery Number"),
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
