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
         TextField(
              controller: myController,
              
              decoration: 
                  InputDecoration(
                    border:OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.teal
                        )
                    ),
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person)
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
            SwitchListTile(
              title: Text("Grind"),
              value: isSwitched,
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
           child: Text("Submit",)
           ),
           FloatingActionButton(
             onPressed: (){
                return showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        content: Text(myController.text),
                      );
                    }  
                  );
            }
           )
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