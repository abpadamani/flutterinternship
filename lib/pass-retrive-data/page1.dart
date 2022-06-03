import 'package:flutter/material.dart';
import 'package:internship/pass-retrive-data/page2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  late String value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Send E-mail")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Enter E-mail Address"),
          TextField(
            autofocus: false,
            onChanged: (text){
              value = text;
            },
            decoration: InputDecoration(
                hintText: "E-mail Address", labelText: "E-mail",),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () { 
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screentwo(value : value)));
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
