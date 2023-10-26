
import 'package:firs_project/product/language/language_items.dart';
import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Column(
        children: [
           TextField(
          autofocus: true, // Direkt o pencereded açılması için
          textInputAction: TextInputAction.next, //klavyede next butonu gelmesi için
            keyboardType: TextInputType.emailAddress, //klavyede @ butonu gelmesi için
            autofillHints: const [AutofillHints.email],
           decoration: _InputDecerator().inputDecerator,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),
              
            ),
          )
        ],
      ),
      
    );
  }
}

class _InputDecerator{
  final inputDecerator=  InputDecoration(
            prefixIcon:  const Icon(Icons.mail),
            border: const OutlineInputBorder(),
            labelText: LanguageItems().mailTitle
           );
}

//Input deceration dışarda verilir abisi.