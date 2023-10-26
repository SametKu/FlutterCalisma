// ViewModel çok basitçe şudur arkadaşlar; bir View'ınız var ve view ile iş yapan katmanlarınız oluşacak (modelleriniz) ve bu iki katman arasını yöneten ara katman olarak düşünülebilir viewmodeller

import 'package:flutter/material.dart';

import 'state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManageLearnView>{
  
  bool isVisible=true;
  
  bool isOpacity=true;

  bool sizeCheck=true;

  void changeScreen(){
    setState(() {
      isVisible=!isVisible;
    });
  }

  void changeOpacity(){
    setState(() {
      isOpacity=!isOpacity;
    });
  }

  void sizeChecked(){
    setState(() {
      sizeCheck=!sizeCheck;
    });
  }
}