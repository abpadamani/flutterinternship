import 'package:flutter/material.dart';
import 'package:internship/main.dart';

class snackbar extends StatelessWidget {
  const snackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Review System"),
      ),
      body: snackbarpage(),
    );
  }
}

class snackbarpage extends StatelessWidget {
  const snackbarpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackbarr = SnackBar(
            content: Text("Best Of Luck"),
            action: SnackBarAction(label: 'Delete', onPressed: () {}),
          );
          Scaffold.of(context).showSnackBar(snackbarr);
        },
        child: Text("All the Best"),
      ),
    );
  }
}
