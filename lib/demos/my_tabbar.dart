import 'package:firs_project/demos/note2_demos_view.dart';
import 'package:firs_project/demos/note3_demos_view.dart';
import 'package:firs_project/demos/note_demos_view.dart';
import 'package:firs_project/demos/training_session.dart';
import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  const DefaultTabController(length: 4, child: Scaffold(
      bottomNavigationBar:  BottomAppBar(
      color: Colors.purple,
      child: TabBar(
      padding: EdgeInsets.zero,
      indicatorColor: Colors.red,
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.orange,
      tabs: [Tab(icon: Icon(Icons.home)), 
      Tab(icon:Icon(Icons.search)), 
      Tab(icon: Icon(Icons.favorite),), 
      Tab(icon: Icon(Icons.person),) ]),),
      body:  
      
      TabBarView(children: [
        TrainingSession(),
        NoteDemos(),
        NoteDemos2(),
        NoteDemos3(),
       ]
    )));
  }
}