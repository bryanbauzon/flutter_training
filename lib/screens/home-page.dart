import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePageWidget extends StatefulWidget{
    @override
    _HomePageWidgetApp createState()=> _HomePageWidgetApp();
}
class _HomePageWidgetApp extends State<HomePageWidget>{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          child:Column(
            children: <Widget>[
              Text("Home")
            ],
          )
        ),  
    );
  }
}

