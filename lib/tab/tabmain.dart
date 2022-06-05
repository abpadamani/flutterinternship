import 'package:flutter/material.dart';
import 'package:internship/tab/tabone.dart';
import 'package:internship/tab/tabthree.dart';
import 'package:internship/tab/tabtwo.dart';

class Mytab extends StatefulWidget {
  const Mytab({Key? key}) : super(key: key);

  @override
  State<Mytab> createState() => _MytabState();
}

class _MytabState extends State<Mytab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("Dashboard")),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              Tab(
                  icon: Icon(
                Icons.person,
                color: Colors.black,
              )),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
            ]),
            Expanded(
                child: TabBarView(children: [
              //first tab
              Myonetab(),

              //second tab
              Mytwotab(),

              //third tab

              Mythreetab(),
            ]))
          ],
        ),
      ),
    );
  }
}
