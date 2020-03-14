import 'package:flutter/material.dart';

class ExploreWidget extends StatefulWidget{
  @override
    _ExploreWidgetApp createState() => _ExploreWidgetApp();
}

class _ExploreWidgetApp extends State<ExploreWidget>{
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
            Text("Hello this is explore tab")
          ],
        ),
        )
    );
  }

}