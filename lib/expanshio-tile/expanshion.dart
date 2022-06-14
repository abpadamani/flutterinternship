import 'package:flutter/material.dart';

class Myexpanshio extends StatefulWidget {
  const Myexpanshio({Key? key}) : super(key: key);

  @override
  State<Myexpanshio> createState() => _MyexpanshioState();
}

class _MyexpanshioState extends State<Myexpanshio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FAQ")),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ExpansionTile(
            title: Text("Questions"),
            leading: Icon(Icons.question_answer),
            backgroundColor: Colors.black,
            children: [
              ListTile(
                title: Text("question 1"),
              ),
              ListTile(
                title: Text("question 2"),
              ),
              ListTile(
                title: Text("question 3"),
              ),
              ListTile(
                title: Text("question 4"),
              ),
              ListTile(
                title: Text("question 5"),
              ),
              ListTile(
                title: Text("question 6"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
