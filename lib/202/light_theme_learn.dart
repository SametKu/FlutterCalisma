import 'package:flutter/material.dart';

class LightThemeLearn extends StatefulWidget {
  const LightThemeLearn({super.key});

  @override
  State<LightThemeLearn> createState() => _LightThemeLearnState();
}

class _LightThemeLearnState extends State<LightThemeLearn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
                CheckboxListTile(value: true, onChanged:(value) {}, title: const Text('Select'),),
        ],
      ),
    );
  }
}

