import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:internship/Inkwell/homepagee.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String username = " ";
  bool changebtn = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebtn = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepagee()),
      );
      setState(() {
        changebtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assests/images/login_img.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 05.0,
            ),
            Text(
              "Welcome $username",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 05.0, horizontal: 10.0)),
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Username ';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    username = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "PAssword",
                  ),
                  validator: (value) {
                    if (value == null) {
                      return 'Please Enter Password ';
                    } else if (value.length < 6) {
                      return 'please enter atleast 6 characters.';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebtn ? 35 : 150,
                      height: changebtn ? 35 : 50,
                      alignment: Alignment.center,
                      child: changebtn
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.brown,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(changebtn ? 20 : 7),
                      ),
                    )),
                SizedBox(
                  width: 100,
                  height: 200,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
