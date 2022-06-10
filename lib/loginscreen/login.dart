import 'dart:ui';
import 'package:email_validator/email_validator.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:internship/bottomsheetdialog/mainbottom.dart';
import 'package:internship/customscrollview/custom.dart';
import 'package:internship/drawer/drawer.dart';
import 'package:internship/nested-scrollview/nested.dart';
import 'package:internship/pages/pageone.dart';
import 'package:internship/tab/tabmain.dart';

import '../bottomnavbar/mainhomepage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/login.png"), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 150),
              child: Text(
                "Welcome \n Guys",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.white, fontSize: 35)),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 35),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                            focusColor: Color(0xff4c505b),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: " E-mail Address",
                            hintStyle: GoogleFonts.ubuntu(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                        validator: (email) {
                          if (email != null &&
                              !EmailValidator.validate(email)) {
                            return 'enter a valid email address';
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Password",
                            hintStyle: GoogleFonts.ubuntu(),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10))),
                        validator: (value) {
                          if (value != null && value.length < 7) {
                            return 'Enter at least 7 characters.';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                              elevation: 3.0,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mybottom()),
                                );
                              },
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Colors.blue, fontSize: 25)),
                              )),
                          CircleAvatar(
                            radius: 30,
                            child: Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            ),
                            backgroundColor: Color(0xff4c505b),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
