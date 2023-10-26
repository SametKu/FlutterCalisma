import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
   ColorLearnView({super.key});
  final ColorItems coloritem=ColorItems();
  final Words _titlee= Words();
  final Words sname= Words();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          title:  Text(_titlee.name2, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: coloritem.red ), ),
        ),
        body: 
          
        
        Container(
          color: coloritem.turquoiseBlue,
          child:    Text(sname.name1),
        ),
    );
  }
}


class ColorItems{

  final Color turquoiseBlue=const Color(0xff61EDE4);
  final Color red= Colors.red;
}

class Words{
  final String name1='MATA';
  final String name2= 'Welcome MyHomePage';
}
