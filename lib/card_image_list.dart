import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';

class  CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/beach_palm.jpeg"),
          CardImage("assets/img/mountain.jpeg"),
          CardImage("assets/img/mountain_stars.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );

    return card;
  }

}