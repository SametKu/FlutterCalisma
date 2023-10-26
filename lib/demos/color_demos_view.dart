import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
   Color? _backgroundColor;

   @override
  void initState() {
    super.initState();
    _backgroundColor=widget.initialColor?? Colors.transparent;
  }
  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    if(widget.initialColor!=_backgroundColor&& widget.initialColor!=null){
      changeBackgroundColor(widget.initialColor!); 
    }
  }

   void changeBackgroundColor(Color color){
          _backgroundColor=color;
          setState(() {});        
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor:_backgroundColor ,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
                onTap: _colorOnTap,
                items:   [
                BottomNavigationBarItem(icon: const _ColorsUtility(color: Colors.red,), label: ColorNames().rColor),
                BottomNavigationBarItem(icon: const _ColorsUtility(color: Colors.yellow), label: ColorNames().yColor),
                BottomNavigationBarItem(icon: const  _ColorsUtility(color: Colors.blue), label: ColorNames().bColor),

      ]),
    );
  }

  void _colorOnTap(value) {
                if(value ==_MyColors.red.index){
                 changeBackgroundColor(Colors.red);
                }
                else if(value==_MyColors.yellow.index){
                  changeBackgroundColor(Colors.yellow);
                }
                else if (value==_MyColors.blue.index){ 
                  changeBackgroundColor(Colors.blue);
                }
               
              }
}

class _ColorsUtility extends StatelessWidget {
  const _ColorsUtility({super.key, required this.color,});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(width:15,height: 10, color: color,);
  }
}

class ColorNames{
  final String rColor='Red';
  final String yColor='Yellow';
  final String bColor='Blue';
}

enum _MyColors{
  red,
  yellow,
  blue,
}