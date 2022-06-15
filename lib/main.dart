import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/Buttonss/buttonss.dart';
import 'package:internship/carousel-slider/Myslider.dart';
import 'package:internship/expanshio-tile/expanshion.dart';
import 'package:internship/page-indicators/mainpageindicator.dart';
import 'package:internship/reordereable/maindrag.dart';
import 'package:internship/simple-dialogue/simple.dart';
import 'package:internship/swipe-to-dismiss/swipe.dart';

import 'avatar/profile.dart';
import 'package:internship/camera/mycamera.dart';

import 'd&t-picker/datepicker.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InternShip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ubuntuTextTheme(),
      ),
      home: MainPage(),
    );
  }
}
