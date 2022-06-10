import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Myback extends StatelessWidget {
  const Myback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime timebackpressed = DateTime.now();
    return WillPopScope(
      onWillPop: () async {
        timebackpressed = DateTime.now();
        final diffrence = DateTime.now().difference(timebackpressed);
        final isExitWarning = diffrence >= Duration(seconds: 2);

        if (isExitWarning) {
          final msj = 'Press again back to Exit';
          Fluttertoast.showToast(
            msg: msj,
            fontSize: 18,
          );

          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text("Hello..")),
        body: Center(
          child: Text("Hello , World"),
        ),
      ),
    );
  }
}
