import 'package:flutter/material.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImg;

  CardImage({
    @required this.pathImg
  });

  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
      height: 300.0,
      width: 275.0,
      margin: EdgeInsets.only(
        top: 75.0,
        left: 15.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.pathImg)
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        cardImage,
        FloatingActionButtonGreen(),
      ],
    );
  }
}