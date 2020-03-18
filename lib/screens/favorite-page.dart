import 'package:flutter/material.dart';


class FavoriteWidget extends StatefulWidget{
  @override
    _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: <Widget>[
             Text("Favorites")
          ],
        ),
        )
    );
  }
}

