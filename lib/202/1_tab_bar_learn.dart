
import 'package:firs_project/101/15column_row_learn.dart';
import 'package:firs_project/101/20_text_field_learn.dart';
import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({super.key});

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> {
   
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _MyTabViews.values.length, child: Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: const BottomAppBar(
      notchMargin: 5, 
      shape: CircularNotchedRectangle(),
      child: TabBar(
      padding: EdgeInsets.zero,
      indicatorColor: Colors.red,
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.orange,
      tabs: [Tab(icon: Icon(Icons.home)), 
      Tab(icon:Icon(Icons.search)), 
      Tab(icon: Icon(Icons.favorite),), 
      Tab(icon: Icon(Icons.person),) ]),),
      appBar: AppBar(
        bottom:   TabBar(tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList()) // tabs: Tab(text: '...' olarak sıra sıra da yazabilirdin aslan parcası)
      ),
      body: const TabBarView(children: [
       TextFieldLearn(),
       ColumnRowLearn(),
        TextFieldLearn(),
       ColumnRowLearn(),

      ]),

    ));
  }
}

// notchedMargin centerdaki floatingbuttonun offset dalgası gibi düşünebilirsin.
// extendedBody=true atamamız ise arkasının gelecek sayfanın colorını almasını sağlar

enum _MyTabViews{
    Home,
    Search,
    Favorite,
    Profile,
}
