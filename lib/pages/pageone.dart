import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Mypage extends StatefulWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Guys"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text("Slide 1")),
          ),
          Container(
            color: Colors.yellow,
            child: Center(child: Text("Slide 2")),
          ),
          Container(
            color: Colors.cyan,
            child: Center(child: Text("Slide 3")),
          ),
        ],
      ),
    );
  }
}
