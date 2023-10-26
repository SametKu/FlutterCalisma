import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firs_project/202/service/post_model.dart';
import 'package:flutter/material.dart';

class ServiceLearnAdvanced extends StatefulWidget {
  const ServiceLearnAdvanced({super.key});

  @override
  State<ServiceLearnAdvanced> createState() => _ServiceLearnState();
}



class _ServiceLearnState extends State<ServiceLearnAdvanced> {
  late final Dio _dio;
  final _baseUrl='https://jsonplaceholder.typicode.com/';
  String? name;
  List<PostModel>? _items; 
  bool _isLoading=false;
  
  
  @override
  void initState() {
    super.initState();
        _dio=Dio(BaseOptions(baseUrl:_baseUrl));
        name='Samet';
        fetchPostItems();
  }

  void changeLoading(){
      setState(() {
              _isLoading=!_isLoading;
      });
  }


 Future<void> fetchPostItems() async {

          changeLoading();

    final response=await _dio.get('posts'); 

              if(response.statusCode==HttpStatus.ok){
                final _datas=response.data;

              if(_datas is List){

                setState(() {
                _items=_datas.map((e) => PostModel.fromJson(e)).toList();

                });
              }
              }      

          changeLoading();       
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? ''), actions:  [Center(child: _isLoading ? const CircularProgressIndicator.adaptive(): const SizedBox())],),

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: _items?.length ?? 0,
        itemBuilder: ((context, index) {
        return  Card(
          margin: const EdgeInsets.only(bottom:10),
          child: ListTile(
            title: Text(_items?[index].title??'', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.red),),
            subtitle: Text(_items?[index].body??''),
          ),
        );
      }))
    );
  }
}