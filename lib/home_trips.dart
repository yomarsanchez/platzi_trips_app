import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String exampleDescription = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis vel eros donec ac odio tempor orci dapibus. Facilisis sed odio morbi quis commodo odio aenean. Facilisis magna etiam tempor orci.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(
                name: 'Huascarán - Ancash',
                stars: 4.6,
                description: exampleDescription
            ),
            ReviewList(),
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}