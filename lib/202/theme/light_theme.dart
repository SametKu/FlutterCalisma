import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme{
    
    ThemeData theme=ThemeData(
      appBarTheme:  const AppBarTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))), centerTitle: true,systemOverlayStyle: SystemUiOverlayStyle.light ),
      scaffoldBackgroundColor: _ColorLight().wColor,
      checkboxTheme:  CheckboxThemeData(fillColor: MaterialStateProperty.all(_ColorLight().rColor),side: BorderSide(color: _ColorLight().pColor) ),
      floatingActionButtonTheme:  FloatingActionButtonThemeData(hoverColor: _ColorLight().yColor,),
      textTheme: 
      ThemeData.light().textTheme.copyWith(
        titleMedium: const TextStyle(fontSize: 25,color: Colors.white)
      ),
      colorScheme: const ColorScheme.light(),
      buttonTheme:  ButtonThemeData(colorScheme:ColorScheme.light(onPrimary: _ColorLight().pColor, onSecondary: _ColorLight().bColor) )
    );
}

class _ColorLight{

  final Color yColor=Colors.yellow;
  final Color pColor=Colors.purple;
  final Color bColor=Colors.blue;
  final Color wColor=Colors.white70;
  final Color rColor=Colors.red;
}