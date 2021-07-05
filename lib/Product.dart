import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  var lst = ["ahmed", "baloch", "Zubair", "Wasti"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my newApp"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(lst.length, (index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              child: Text(lst[index]),
            ),
          );
        }),
      ),
    );
  }
}
