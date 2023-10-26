import 'package:flutter/material.dart';

class FormValidateLearn extends StatefulWidget {
  const FormValidateLearn({super.key});

  @override
  State<FormValidateLearn> createState() => _FormValidateLearnState();
}

class _FormValidateLearnState extends State<FormValidateLearn> {

  GlobalKey <FormState> _key=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {}, // özel işleri burdan yapıyoruz şu durum şöyle oldu falan Text'in içerisindeki işlemlere göre ;)
        child: Column(
          children: [
      
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: FormFieldValidator().isNotEmpty,
              ),
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                validator: (value) {
                  return (value?.isNotEmpty ?? false) ? null : 'Lütfen bir değer giriniz';
                },
              ),

              DropdownButtonFormField<String>(
                validator: (value){
                  return (value?.isNotEmpty ?? false) ? null : 'Lütfen bir değer seçiniz';
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
                items: const [
                  DropdownMenuItem( value: 'v',child: Text('Nazmi'),),
                  DropdownMenuItem( value: 'v2',child: Text('Hatice'),),
                  DropdownMenuItem( value: 'v3',child: Text('Burak'),),
                  DropdownMenuItem( value: 'v4',child: Text('Samet'),),
                  
                  
                  ], 
                onChanged: (value){}),

              ElevatedButton(onPressed: (){
                if(_key.currentState?.validate() ?? false){

                }
              }, child: const Text('SAVE')),
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator{
   String? isNotEmpty(String? data){

      return (data?.isNotEmpty ?? false) ? null : ValidatorMessage().fMessage; // Bu güzel kullanıma alış abisi

   }
}

class ValidatorMessage{

  final String fMessage='Lütfen bir değer giriniz';
}