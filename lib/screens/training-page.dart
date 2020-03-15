import 'package:flutter/material.dart';
import 'package:flutter_training/screens/explore-page.dart';
import 'package:flutter_training/screens/favorite-page.dart';
import 'package:flutter_training/screens/home-page.dart';
import 'package:flutter_training/screens/login-page.dart';

class TraingPage extends StatefulWidget{
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TraingPage> with SingleTickerProviderStateMixin{

  final List<Tab>myTabs = <Tab>[
      Tab(icon: Icon(Icons.home),),
      Tab(icon: Icon(Icons.favorite),),
      Tab(icon: Icon(Icons.explore),),
  ];

  TabController _tabController;
  
  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this,length: myTabs.length);
  }

  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async{
          return false;
    },
      child:  Scaffold(
      appBar: AppBar(
        title: Text("Tondol Beach"),
        bottom: TabBar(
          controller: _tabController,
          tabs:myTabs
        ),
      ),
      drawer: Drawer(
        child:ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color:Colors.blue
                ),
                child: Text("Tondol Beach",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:20
                    ),
                ),
            ),
            ListTile(
              leading:Icon(Icons.settings),
              title:Text("Settings"),
            ),
            ListTile(
              leading:Icon(Icons.arrow_back),
              title:Text("Logout"),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage())
              );
              },
            )
          ],
          )
      ),
      body:TabBarView(
        controller: _tabController,
          children: <Widget>[
            HomePageWidget(),
            FavoriteWidget(),
            ExploreWidget(),
          ],  
      ),
    ),
     );
  }
}

