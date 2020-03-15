import 'package:flutter/material.dart';


class FavoriteWidget extends StatefulWidget{
  @override
    _FavoriteWidgetApp createState() => _FavoriteWidgetApp();
}

class _FavoriteWidgetApp extends State<FavoriteWidget>{
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

