import 'package:flutter/material.dart';

class Myswipe extends StatelessWidget {
  final List<String> items = List<String>.generate(30, (i) => "Items ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe to Dismiss"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              items.removeAt(index);

              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("Items Deleted!")));
            },
            child: ListTile(
              title: Text('${items[index]}'),
            ),
          );
        },
      ),
    );
  }
}
