import 'package:firs_project/product/language/language_items.dart';
import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  final String _bText=LanguageItems().welcomeTitle;
  int _counterCustom=0;

  void _updateCount(){
    setState(() {
      ++_counterCustom;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _updateCount, style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child:  Text('$_bText $_counterCustom'));
  }
}

//bir component ana componenti etkilemesin kardesim. birbirleriyle ilgili componentleri konustursun.