import 'package:flutter/material.dart';
import '../Widget/Slider.dart';

class Slideritem extends StatelessWidget {
  final int index;
  Slideritem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Container(
              width: 350,
              height: 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(slideList[index].imageUrl),
              )),
          Container(
            margin: EdgeInsets.only(right: 210, left: 0),
            child: Text(
              slideList[index].title,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Icon(Icons.star, color: Colors.amber, size: 18),
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5),
                  child: Text(
                    "5.0(23 Reviews)",
                    style: TextStyle(),
                  ),
                )
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
