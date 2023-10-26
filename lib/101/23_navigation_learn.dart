
import 'package:firs_project/demos/my_collection_demos.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatelessWidget with NavigateManager {
  const NavigationLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
            navigateToWidget(context, const MyCollectionDemos());
      }, child: const Icon(Icons.rocket_launch_outlined),),
      appBar: AppBar(),

    );
  }
}

mixin NavigateManager{

  void navigateToWidget(BuildContext context, Widget widget){

          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return  widget;},
                fullscreenDialog: true, // Native IOS'daki açılıp kapanma sekline döner yani aşagıdan yukarı yukarıdan asagı. ekstra leading x oldu. 
        ),);
  }
}