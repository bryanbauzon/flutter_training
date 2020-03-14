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
      body: Center(
        child: Container(
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
                  )
                ],
           ),
        ),
      ),
    );
  }

}