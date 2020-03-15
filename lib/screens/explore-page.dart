import 'package:flutter/material.dart';

class ExploreWidget extends StatefulWidget{
  @override
    _ExploreWidgetApp createState() => _ExploreWidgetApp();
}

class _ExploreWidgetApp extends State<ExploreWidget>{
  
  bool isSwitched = false;
  bool isChecked = false;
  double slider  = 0;

  final myController = TextEditingController();
  
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Text("Explore")
        ],
        // margin:EdgeInsets.all(20),
        // padding: EdgeInsets.all(10),
        // child: Column(
        //   children: <Widget>[
        

        //   ],
        // ),
        )
    );
  }

}