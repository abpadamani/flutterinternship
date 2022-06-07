import 'package:flutter/material.dart';
import 'package:internship/drawer/drawer.dart';

class Mybottom extends StatefulWidget {
  const Mybottom({Key? key}) : super(key: key);

  @override
  State<Mybottom> createState() => _MybottomState();
}

class _MybottomState extends State<Mybottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Mydrawer(),
      appBar: AppBar(
        title: Text("Bottom Sheet Dialog"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (context) => Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Close"),
                    ),
                  ));
        },
        child: Text("Open Bottom Sheet"),
      )),
    );
  }
}
