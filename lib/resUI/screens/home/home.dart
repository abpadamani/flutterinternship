import 'package:flutter/material.dart';
import 'components/jumbotron.dart';

import 'package:internship/resUI/components/footer.dart';
import 'package:internship/resUI/components/header.dart';
import 'package:internship/resUI/components/side_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Header(), Jumbotron(), Footer()],
            ),
          ),
        ),
      ),
    );
  }
}
