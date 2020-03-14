import 'package:flutter/material.dart';
import 'package:flutter_training/screens/explore-page.dart';
import 'package:flutter_training/screens/favorite-page.dart';
import 'package:flutter_training/screens/home-page.dart';

class TraingPage extends StatefulWidget{
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TraingPage> with SingleTickerProviderStateMixin{

  final List<Tab>myTabs = <Tab>[
      Tab(text:"Home",icon: Icon(Icons.home),),
      Tab(text:"Favorite",icon: Icon(Icons.favorite),),
      Tab(text:"Explore",icon: Icon(Icons.explore),),
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
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.place),
        title: Text("Flutter Development"),
        bottom: TabBar(
          controller: _tabController,
          tabs:myTabs
        ),
      ),
      body:TabBarView(
        controller: _tabController,
          children: <Widget>[
            HomePageWidget(),
            FavoriteWidget(),
            ExploreWidget(),
          ],  
      ),
    );
  }
}

