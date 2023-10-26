import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response= await showDialog(
          barrierDismissible: false, // kullanıcı etrafa bastıgında dialog ekranı kapanmaması icin. Önemli bir detaydır
          context: context, builder: (context){
            return AlertDialog(
              title: const Text('Version Update'),
              actions: [ElevatedButton(onPressed: () {Navigator.pop(context,true);}, child: const Text('Update')),
              TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Close'))],
            );
        });
        inspect(response);
      }),
      appBar: AppBar(),
    );
  }
}