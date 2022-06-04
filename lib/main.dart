import 'package:flutter/material.dart';

import 'loginscreen/login.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
  initialRoute: 'login',
      routes: {
        'login':(context) => MyLogin(),

      },


    );
  }
}
