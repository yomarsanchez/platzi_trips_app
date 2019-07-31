import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImg;
  String name;
  String details;
  double stars;
  String comment;
  int starCount;

  Review({
    @required this.pathImg,
    @required this.name,
    @required this.details,
    @required this.stars,
    @required this.comment,
    this.starCount = 5
  });

  @override
  Widget build(BuildContext context) {
    
    final userProfile = Container(
      width: 70.0,
      height: 70.0,
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(this.pathImg),
          fit: BoxFit.cover
        )
      ),
    );

    final userName = Container(
      width: MediaQuery.of(context).size.width - 130,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        this.name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        this.details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFA3A5A7)
        ),
      ),
    );

    final userComment = Container(
      width: MediaQuery.of(context).size.width - 130,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        this.comment,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        Row(
          children: <Widget>[
            userInfo,
            Row(
              children: getStars(),
            ),
          ],
        ),
        userComment
      ],
    );

    return Row(
      children: <Widget>[
        userProfile,
        userDetails
      ],
    );
  }

  List<Widget> getStars({double marginTop =  5.0, double marginRight = 5.0, int color = 0xFFF2C716, double sizeIcon = 13.0}) {
    List<Widget> starList = List();

    for (var i = 1; i <= this.starCount; i++) {
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

      if (icon != null) {
        starList.add(Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight
          ),
          child: Icon(
            icon,
            color: Color(color),
            size: sizeIcon,
          ),
        ));
      }
    }

    return starList;
  }
}