import 'package:flutter/material.dart';

class Mysimple extends StatefulWidget {
  const Mysimple({Key? key}) : super(key: key);

  @override
  State<Mysimple> createState() => _MysimpleState();
}

class _MysimpleState extends State<Mysimple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                  title: Text("For More Info.."),
                  contentPadding: EdgeInsets.all(20.0),
                  children: [
                    Text("Visit www.arpan.com"),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Close"))
                  ],
                ),
              );
            },
            child: Text("About Us")),
      ),
    );
  }
}
