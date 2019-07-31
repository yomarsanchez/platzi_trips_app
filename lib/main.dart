import 'package:flutter/material.dart';
import 'package:platzi_trips_app/platzi_trips.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curso Fluter Platzi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatziTrips()
    );
  }
}

class SecondChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/iphone_wallpaper.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child: Center(
        child: Container(
          height: 70.0,
          color: Color.fromRGBO(0, 0, 0, .5),
          child: Center(
            child: Text(
              'Second Challenge Platzi',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0
              ),
            ),
          ),
        ),
      )
    );
  }
}