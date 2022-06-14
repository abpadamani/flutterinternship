import 'package:flutter/material.dart';

class Mydate extends StatefulWidget {
  const Mydate({Key? key}) : super(key: key);

  @override
  State<Mydate> createState() => _MydateState();
}

class _MydateState extends State<Mydate> {
  DateTime DateandTime = DateTime.now();
  TimeOfDay time = TimeOfDay(hour: 10, minute: 30);

  void _showtimepicker() {
    showTimePicker(context: context, initialTime: time).then((value) {
      setState(() {
        time = value!;
      });
    });
  }

  void _showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        DateandTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300),
          Text(
            'Your Selected Time:   ',
            style: TextStyle(fontSize: 25),
          ),
          Center(
            child: Text(
              '${time.hour}:${time.minute}',
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                _showtimepicker();
              },
              color: Colors.blueAccent,
              child: Text("Select Time"),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Your Selected Date:",
            style: TextStyle(fontSize: 25),
          ),
          Center(
            child: Text(
              '$DateandTime ',
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                _showdatepicker();
              },
              color: Colors.blueAccent,
              child: Text("Select Date"),
            ),
          ),
        ],
      ),
    );
  }
}
