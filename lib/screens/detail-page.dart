import 'package:flutter/material.dart';

import 'home-page.dart';

class DetailScreen extends StatelessWidget{
  
  final Todo todo;
  
  //in the constructor require a todo
  DetailScreen({Key key,@required this.todo}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(todo.title),
      ),
      body:Padding(
        padding: EdgeInsets.all(10.6),
        child: 
            Text(todo.description),
        )
    );
  }

 }
