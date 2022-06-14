import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Myslider extends StatelessWidget {
  const Myslider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  "Language Hub",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Icon(
                        Icons.search,
                        size: 23,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://thumbs.dreamstime.com/b/html-icon-vector-isolated-white-background-logo-concept-h-html-icon-vector-isolated-white-background-logo-concept-html-125792762.jpg')),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                reverse: true,
              ))
        ],
      ),
    );
  }
}
