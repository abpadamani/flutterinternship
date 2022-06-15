import 'package:flutter/material.dart';
import 'package:internship/drawer/drawer.dart';
import 'package:internship/loginscreen/login.dart';

class Myappbar extends StatefulWidget {
  const Myappbar({Key? key}) : super(key: key);

  @override
  State<Myappbar> createState() => _MyappbarState();
}

class _MyappbarState extends State<Myappbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Mydrawer(),
        appBar: AppBar(
          title: Text("My Dashboard"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyLogin()),
                  );
                },
                icon: Icon(Icons.logout)),
          ],
          backgroundColor: Colors.black,
          elevation: 0,
          bottom: TabBar(indicatorColor: Colors.red, indicatorWeight: 5, tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.chat),
              text: "Orders",
            ),
            Tab(
              icon: Icon(Icons.analytics),
              text: "Progress",
            ),
          ]),
        ),
        body: TabBarView(children: [
          ntab('Homepage'),
          ntab('Orders Page'),
          ntab('Progress Page'),
        ]),
      ),
    );
  }

  Widget ntab(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 25),
        ),
      );
}
