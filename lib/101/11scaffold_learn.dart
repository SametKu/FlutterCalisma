
import 'package:firs_project/101/5container_sized_box_learn.dart';
import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Scaffold Samples'))),
      body: const Center(child: Text('Hello MF')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder:(context)=>const SizedBox(
            height: 200,
            child:   Center(child:Text("samet")),
          ) );
        },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.red,
      drawer: const Drawer(),
      
      bottomNavigationBar: Container(
        height: 75,
        decoration: ProjectContainerDecoration.boxDecoration ,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm),label: 'Alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label:'Add')]),
      ),
    );
  }
}