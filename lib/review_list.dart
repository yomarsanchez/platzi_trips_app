import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 40.0,
            left: 20.0,
          ),
          child: Text(
            'All Reviews',
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF909193),
            ),
          ),
        ),
        Review(
          pathImg: 'assets/img/yomarsanchez.jpg',
          name: 'Yomar Sánchez Alania',
          details: '9 Review . 10 photos',
          stars: 2.7,
          comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        ),
        Review(
          pathImg: 'assets/img/people.jpg',
          name: 'Varuna Yasas',
          details: '1 Review . 5 photos',
          stars: 2.7,
          comment: 'There is an amazing place in Sri Lanka',
        ),
        Review(
          pathImg: 'assets/img/people.jpg',
          name: 'Varuna Yasas',
          details: '1 Review . 5 photos',
          stars: 2.7,
          comment: 'There is an amazing place in Sri Lanka',
        ),
        Review(
          pathImg: 'assets/img/people.jpg',
          name: 'Varuna Yasas',
          details: '1 Review . 5 photos',
          stars: 2.7,
          comment: 'There is an amazing place in Sri Lanka',
        ),
        Review(
          pathImg: 'assets/img/people.jpg',
          name: 'Varuna Yasas',
          details: '1 Review . 5 photos',
          stars: 2.7,
          comment: 'There is an amazing place in Sri Lanka',
        ),
        Review(
          pathImg: 'assets/img/people.jpg',
          name: 'Varuna Yasas',
          details: '1 Review . 5 photos',
          stars: 2.7,
          comment: 'There is an amazing place in Sri Lanka',
        ),
      ],
    );
  }
}