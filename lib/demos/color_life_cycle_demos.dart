import 'package:firs_project/demos/color_demos_view.dart';
import 'package:flutter/material.dart';

class ColorLifeCycleDemo extends StatefulWidget {
  const ColorLifeCycleDemo({super.key});

  @override
  State<ColorLifeCycleDemo> createState() => _ColorLifeCycleDemoState();
}

class _ColorLifeCycleDemoState extends State<ColorLifeCycleDemo> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
     
    return  Scaffold(
      appBar: AppBar(actions: [ IconButton(onPressed: () {
      setState(() {
         _backgroundColor=Colors.pink; 
      });
      }, icon: const Icon(Icons.clear))],),
      body:  Column(
        children: [
            const Spacer(),
            Expanded(child: ColorDemos(initialColor: _backgroundColor)),

        ],
      ),
    );
  }
}