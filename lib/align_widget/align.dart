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
      children: [
        SizedBox(
          height: 20,
        ),
        Icon(CupertinoIcons.location),
        SizedBox(
          height: 10,
        ),
        Center(
            child: Text(
          "Surat",
          style: TextStyle(fontSize: 30),
        )),
        Image.network(
          "https://qph.cf2.quoracdn.net/main-qimg-eb9cb9c6f24afa88c5d5c195563d4349.webp",
          fit: BoxFit.fitHeight,
        ),
        Image.network(
          "https://qph.cf2.quoracdn.net/main-qimg-3f4fb561011455a9e3e37418fbb9a916.webp",
          fit: BoxFit.fitHeight,
        ),
        SingleChildScrollView(
          child: Image.network(
            "https://qph.cf2.quoracdn.net/main-qimg-eb9cb9c6f24afa88c5d5c195563d4349.webp",
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
