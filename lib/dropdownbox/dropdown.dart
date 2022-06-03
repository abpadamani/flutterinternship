import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class Mydrop extends StatefulWidget {
  const Mydrop({Key? key}) : super(key: key);

  @override
  State<Mydrop> createState() => _MydropState();
}

class _MydropState extends State<Mydrop> {
  final items = ['100', '200', '300', '400', '500'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Amount")),
      body: Center(
        child: DropdownButton<String>(
          value: value,
          items: items.map(buildMenuItem).toList(),
          onChanged: (value) => setState(() => this.value = value),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
