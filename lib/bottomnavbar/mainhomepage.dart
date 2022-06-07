import 'package:flutter/material.dart';
import 'package:internship/bottomnavbar/homepage.dart';
import 'package:internship/bottomnavbar/likespage.dart';
import 'package:internship/bottomnavbar/profilepage.dart';
import 'package:internship/bottomnavbar/searchpage.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final screens = [Myhome(), Mysearch(), Mylikes(), Myprofile()];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          onTap: (index) => setState(() => currentindex = index),
          currentIndex: currentindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Likes",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.blue),
          ]),
    );
  }
}
