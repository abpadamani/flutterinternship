import 'package:flutter/material.dart';
import 'package:internship/page-indicators/page1.dart';
import 'package:internship/page-indicators/page2.dart';
import 'package:internship/page-indicators/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:internship/page-indicators/page4.dart';

class Myindicator extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                page1(),
                page2(),
                page3(),
                page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.deepPurple.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
