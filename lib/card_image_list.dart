import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(
            pathImg: 'assets/img/sunset.jpeg',
          ),
          CardImage(
            pathImg: 'assets/img/river.jpeg',
          ),
          CardImage(
            pathImg: 'assets/img/mountain.jpeg',
          ),
          CardImage(
            pathImg: 'assets/img/beach.jpeg',
          ),
          CardImage(
            pathImg: 'assets/img/mountain_stars.jpeg',
          ),
          CardImage(
            pathImg: 'assets/img/beach_palm.jpeg',
          ),
        ],
      )

    );
  }
}