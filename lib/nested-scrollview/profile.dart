import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/93420625?v=4")),
                ),
              ),
              Column(
                children: [
                  Text(
                    "30",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "135K",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "100",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Following"),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(left: 15),
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Developer",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "\n10+ Years of Experince",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)),
            TextSpan(
                text: "\nStylish \nFoodlover \nany Time",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal))
          ])),
        ),
      ],
    );
  }
}
