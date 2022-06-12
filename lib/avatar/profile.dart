import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Buildtop(),
          BuildContent(),
        ],
      ),
    );
  }
}

Widget Buildtop() {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      BuildCoverImage(),
      Positioned(top: 170, child: BuildProfileImage()),
    ],
  );
}

Widget BuildCoverImage() => Container(
      color: Colors.grey,
      child: Image.network(
        'https://images.pexels.com/photos/1535907/pexels-photo-1535907.jpeg?cs=srgb&dl=pexels-karyme-fran%C3%A7a-1535907.jpg&fm=jpg',
        width: double.infinity,
        height: 240,
        fit: BoxFit.cover,
      ),
    );

Widget BuildProfileImage() => CircleAvatar(
      radius: 144 / 2,
      backgroundColor: Colors.grey[800],
      backgroundImage: NetworkImage(
          'https://avatars.githubusercontent.com/u/93420625?s=400&u=4f5a5f4a899c81d5790df151be4eb805019e2b1c&v=4'),
    );

Widget BuildContent() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80),
          Center(
            child: Text(
              'Arpan Padamani',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
