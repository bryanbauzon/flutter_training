import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/screens/training-page.dart';

class LoginPage extends StatefulWidget{
    @override
    _LoginPageWidget createState()=> _LoginPageWidget();
}
class _LoginPageWidget extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: ()async{
        return false;
    },child: Scaffold(
        body:Center(
          child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
            children: <Widget>[
              Text(
                "Welcome!",
                style: TextStyle(
                  color:Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
              
                const SizedBox(height: 15,),
                TextField(
                  decoration:InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    border:OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.blue)
                    )
                  )
                ),
                const SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  decoration:InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.security),
                    border:OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.blue)
                    )
                  ),
                ),
                FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TraingPage()));
                },
                  textColor: Colors.white,
                  color: Colors.blue,
                 child: Text("Login")
                 ),
                 Text(
                   "Developer : Max Bryan C. Bauzon",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize:10,
                   ),
                 )
            ],
          )
          
        )
    )
    );

      
  }
    
}