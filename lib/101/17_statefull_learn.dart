
import 'package:firs_project/product/counter_hello_button.dart';
import 'package:firs_project/product/language/language_items.dart';
import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  
  int _countValue=0;
   

  void increaseValue(){
    setState(() {
      _countValue++;
    });  
  }

  void deincreaseValue(){
    setState(() {
      _countValue--;
    });
  }

  void _updateCount(bool isIncrement){
    if(isIncrement){
      _countValue++;
    }
    else{
      _countValue--;
    }
    setState(() {});
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title:  Text(LanguageItems().welcomeTitle),),
          body:  Column(
            children: [
              Center(child:  Text(_countValue.toString(), style: Theme.of(context).textTheme.displaySmall,)),
              const Placeholder(),
              const CounterHelloButton(),
            ],
          ),
          floatingActionButton: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _remButton(),
              _addButton(),
            ],
          ),
    );
  }

  FloatingActionButton _addButton() => FloatingActionButton(onPressed: (){_updateCount(true);},child: const Icon(Icons.add),);

  Padding _remButton() {
    print('abi');
    return Padding(
              padding: const EdgeInsets.only(right:8),
              child: FloatingActionButton(onPressed: (){_updateCount(false);},child: const Icon(Icons.remove),),
            );
  }
}

//setState dataların güncellemesi amacıyla kullanılır. Build methodunu tekrar tetikler