import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/main.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Widgets with Image"),
      ),
      body: align_widget(),
    );
  }
}

class align_widget extends StatelessWidget {
  const align_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Image.network(
              'https://qph.cf2.quoracdn.net/main-qimg-38a642f81d73b327e819c70497a8d847.webp'),
        ),
        Expanded(
          child: Image.network(
              'https://dontgetserious.com/wp-content/uploads/2016/07/surat-is-beautiful.jpg'),
        ),
        Expanded(
          child: Image.network(
              'https://i.pinimg.com/originals/5b/30/89/5b3089ef299973e35e16d4cbd9a934f2.jpg'),
        ),
      ],
    );
  }
}
