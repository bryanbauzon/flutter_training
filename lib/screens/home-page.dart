import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/screens/detail-page.dart';

class Todo{
  final String title;
  final String description;

  Todo(this.title,this.description);
}

class HomePageWidget extends StatefulWidget{
    @override
    _HomePageWidgetApp createState()=> _HomePageWidgetApp();
}
class _HomePageWidgetApp extends State<HomePageWidget>{

  final todos = List<Todo>.generate(20, (i)=>Todo('Todo $i','A description of what needs to be done for Todo $i')); 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context,index){
                  return ListTile(
                      title: Text(todos[index].title),
                      onTap: (){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>DetailScreen(todo:todos[index])),
                        );
                      },
                  );
                },
    );
  }
}

