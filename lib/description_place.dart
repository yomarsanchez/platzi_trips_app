import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:platzi_trips_app/button_navigate.dart';

class DescriptionPlace extends StatelessWidget {
  String name;
  double stars;
  String description;
  int numberStars;

  DescriptionPlace({
    @required this.name,
    @required this.stars,
    @required this.description, 
    this.numberStars = 5
  });

  @override
  Widget build(BuildContext context) {

    final titleStars = Row(
      children: <Widget>[
        Container(
          // width: (MediaQuery.of(context).size.width / 1.8),
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            this.name,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: getStars(),
        ),
      ],
    );
    
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        this.description,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF909193),
        ),
      ),
      alignment: Alignment.centerLeft,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        description,
        ButtonNavigate(
          buttonText: 'Navidate',
        )
      ],
    );
  }

  List<Widget> getStars({double marginTop =  323.0, double marginRight = 3.0, int color = 0xFFF2C716}) {
    List<Widget> starList = List();

    for (var i = 1; i <= this.numberStars; i++) {
      var icon;
      if (i < this.stars.round()) {
        icon = Icons.star;
      } else if (i > this.stars.round()) {
        icon = Icons.star_border;
      } else {
        if (this.stars % 1 == 0) { // Es entero
          icon = Icons.star;
        } else {
          icon = Icons.star_half;
        }
      }

      starList.add(Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.only(
          top: marginTop,
          right: marginRight
        ),
        child: Icon(
          icon,
          color: Color(color),
          size: 14.0,
        ),
      ));
    }

    return starList;
  }
}