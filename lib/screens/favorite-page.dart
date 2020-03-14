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
              //Card
              Card(
                child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                      const ListTile(
                        leading:Icon(Icons.favorite),
                        title: Text("lorem ipsum"),
                        subtitle: Text("lorem ipsum dolor"),
                      ),
                      ButtonBar(
                        children:<Widget>[
                            FlatButton(onPressed: (){
                            }, child: Text("View"))
                        ]
                      )
                  ]
                )
              ),
              ActionChip(
                avatar: CircleAvatar(
                  backgroundColor:Colors.blueGrey.shade100,
                  child:Text("I.T")
                ),
                label: Text("Bryan"), onPressed: (){
                  
              }),

             
          ],
        ),
        )
    );
  }
}

