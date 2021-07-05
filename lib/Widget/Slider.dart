import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;

  Slide({
    required this.imageUrl,
    required this.title,
  });
}

final slideList = [
  Slide(
      imageUrl:
          "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201905/realme_c2_3.jpeg?ZG6o6fhhO5yJTdXRF9CwIxT7eHd20k2z",
      title: "Iphone 12"),
  Slide(
      imageUrl:
          "https://cdn.tz.nl/wp-content/uploads/2020/09/Samsung-Galaxy-Note-20-Ultra-review-00-1284x722.jpg",
      title: "Note 20 Ultra"),
  Slide(
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh_XX8Z4mFu0mU2lMBXmg719lFFETqpe7lrA&usqp=CAU",
      title: "Mackbook Air")
];
