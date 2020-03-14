import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget{
  @override
    _FavoriteWidgetApp createState() => _FavoriteWidgetApp();
}

class _FavoriteWidgetApp extends State<FavoriteWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(

      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Hello this is favorite tab")
          ],
        ),
        )
    );
  }

}