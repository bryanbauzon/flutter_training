import 'package:flutter/material.dart';

class ExploreWidget extends StatefulWidget{
  @override
    _ExploreWidgetApp createState() => _ExploreWidgetApp();
}

class _ExploreWidgetApp extends State<ExploreWidget>{
  
  bool isSwitched = false;
  bool isChecked = false;
  double slider  = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body:Container(
        margin:EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: 
                  InputDecoration(
                      // hintText: "Normal Text",
                      labelText: "Normal Text"
                  ),
            ),
            //password
            TextField(
              obscureText:true,
              decoration:InputDecoration(
                labelText:"Password"
              )
            ),
            
            //Check box List Tile
            CheckboxListTile(
              title:const Text("Food"),
              value: isChecked, 
              onChanged: (bool value){
                  setState(() {
                    isChecked = value;
                  });
              }
            ),
            //Switch
            Switch(
              value: isSwitched,
              activeTrackColor: Colors.blueGrey,
              onChanged: (bool value){
              setState(() {
                isSwitched = value;
              });
            }),
          //Slider
          Slider(
            min:0,
            max:100,
            value:slider,
            onChanged: (value){
              setState(() {
                slider = value;
              });
            },
          ),

          FlatButton(onPressed: (){
              final snackBar = SnackBar(content: Text("Camille"),
                action:SnackBarAction(
                  label:"Okay",
                  onPressed: (){
                    
                  },
                )
              );
              Scaffold.of(context).showSnackBar(snackBar);
          },
            color:Colors.blueGrey,
            textColor: Colors.white,
           child: Text("Submit",))

          ],
        ),
        )
    );
  }

}