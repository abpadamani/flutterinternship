import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/singlechildscrollview/singlechild.dart';

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
      theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
        Theme.of(context).textTheme,
      )),
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
      },
    );
  }
}
