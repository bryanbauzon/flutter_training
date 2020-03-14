import 'package:flutter/material.dart';

class TraingPage extends StatefulWidget{
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TraingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Flutter Training"),//develop
      ),
      body: Container(
           margin: EdgeInsets.all(10),
           padding: EdgeInsets.all(10),
           child: Column(
             crossAxisAlignment:CrossAxisAlignment.center,
             mainAxisAlignment:MainAxisAlignment.center,
                children: <Widget>[
                  
                  //Username
                  TextField(
                    decoration:InputDecoration(hintText: "Username")
                  ),
                  
                  //Password
                  TextField(
                    obscureText:true,
                    decoration:InputDecoration(hintText:"Password")
                  ),
                  
                  // Login Button
                  FlatButton(
                    onPressed: (){},
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(5),
                    splashColor: Colors.blueAccent,
                    child: Text("Flat Button",style: TextStyle(fontSize: 18.0),),
                  ),
                  const SizedBox(height: 20,),
                   RaisedButton(
                     onPressed: (){},
                      textColor: Colors.white,
                      color: Colors.blueAccent,
                      child: Text("Raised Button"),
                  ),
                  Card(
                      child: Column(
                        mainAxisSize:MainAxisSize.min,
                        children:<Widget>[
                          const ListTile(
                            leading: Icon(Icons.add_a_photo),
                            title:Text("Photography"),
                            subtitle: Text("Max Bryan C. Bauzon"),
                          ),
                          ButtonBar(
                            children:<Widget>[
                                FlatButton(
                                  onPressed: (){}, 
                                  child: const Text("View")
                                ),
                                 FlatButton(
                                  onPressed: (){}, 
                                  child: const Text("Add")
                                )
                            ]
                          ),
                        ]
                      ) ,
                  ), 
                ],
           ),
        ),
    );
  }

}