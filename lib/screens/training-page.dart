import 'package:flutter/material.dart';
import 'package:flutter_training/screens/widgets-page.dart';

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
                  
                  const SizedBox(height: 20,),
                  // Login Button
                  FlatButton(
                    onPressed: (){
                      //function to redirect to widgets-page.dart
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=>WidgetsPage()
                        )
                      ); 
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(5),
                    splashColor: Colors.blueAccent,
                    child: Text("Login",style: TextStyle(fontSize: 18.0),),
                  ),
                   
                ],
           ),
        ),
    );
  }

}