import 'package:flutter/material.dart';

class Myalert extends StatefulWidget {
  const Myalert({Key? key}) : super(key: key);

  @override
  State<Myalert> createState() => _MyalertState();
}

class _MyalertState extends State<Myalert> {
  void _showdialogue() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Warning:"),
            content: Text("You are 18+ ?"),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Yes"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _showdialogue();
          },
          color: Colors.redAccent,
          child: Text(
            "Play Video ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
