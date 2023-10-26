import 'package:flutter/material.dart';

import 'state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        changeOpacity();
      
      }),
      appBar: AppBar(title: const Text('samet'),
        backgroundColor: isOpacity ? Colors.red : Colors.blue,
        shadowColor: isVisible ? Colors.amber: Colors.green,
      ),
    );
  }
}