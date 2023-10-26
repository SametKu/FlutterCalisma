import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firs_project/202/service/post_model.dart';
import 'package:flutter/material.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}



class _ServiceLearnState extends State<ServicePostLearn> {
  
  late final Dio _dio;
  final _baseUrl='https://jsonplaceholder.typicode.com/';
  String? name;
  bool _isLoading=false;

  final TextEditingController _titleController=TextEditingController();
  final TextEditingController _bodyController=TextEditingController();
  final TextEditingController _userIdController=TextEditingController();

  
  @override
  void initState() {
    super.initState();
        _dio=Dio(BaseOptions(baseUrl:_baseUrl));

  }

  void changeLoading(){
      setState(() {
              _isLoading=!_isLoading;
      });
  }

  Future<void> _addItemsToService(PostModel postmodel) async {
    changeLoading();
    final response= await _dio.post('/post', data:postmodel );

    if(response.statusCode==HttpStatus.created){
            name='Basarili';
          
 }
    changeLoading();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:Text(name ?? ''),
      actions:  [Center(child: _isLoading ? const CircularProgressIndicator.adaptive(): const SizedBox())],),

      body:   Column(
        children: [
               TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: _titleController,
                decoration: const InputDecoration(border: OutlineInputBorder(), labelText:'Title'),),
               TextField(
                textInputAction: TextInputAction.next,
                controller: _bodyController,
                decoration:  const InputDecoration(border: OutlineInputBorder(), labelText: 'Body'),),
               TextField(
                controller: _userIdController,
                keyboardType: TextInputType.number, 
                autofillHints: const [AutofillHints.creditCardNumber], 
                decoration:  const InputDecoration(border: OutlineInputBorder(), labelText: 'UserId'),),

              TextButton(onPressed: _isLoading ? null :() => 
              () {
                if(_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _userIdController.text.isNotEmpty){
                  final model= PostModel(
                     title:_titleController.text,
                     body: _bodyController.text,
                     userId: int.tryParse(_userIdController.text),
                      );
                      _addItemsToService(model);
                };

                
              }, child: const Text('Send')),
        ],
      )
    );
  }
}