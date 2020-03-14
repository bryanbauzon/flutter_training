import 'package:flutter/material.dart';

class WidgetsPage extends StatefulWidget{
_WidgetsPageState createState() => _WidgetsPageState();
}
class _WidgetsPageState extends State<WidgetsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Widgets Page"),
      ),
      body:Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
            children: <Widget>[
              Card(
                child:InkWell(
                  splashColor: Colors.blue.withAlpha(1),
                  onTap: (){
                    print("Card Tapped!");
                  },
                  child: Container(
                    width: 300,
                    height: 250,
                    child:Text("Tap me!")
                  ),
                )
              )
            ],
        ),
      )
    );
  }

}