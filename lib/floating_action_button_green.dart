import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>  _FloatingActionButtonGreen();
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false;
  String messageAdding = 'Agregaste a tus favoritos';
  String messageRemoving = 'Se ha quitado de tus favoritos';

  void _onPressedFav() {
    
    setState(() {
      this._pressed = !this._pressed;
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromRGBO(88, 75, 209, .61),
        content: Text(
          this._pressed ? this.messageAdding : this.messageRemoving,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      ),
      onPressed: _onPressedFav,
    );
  }
}