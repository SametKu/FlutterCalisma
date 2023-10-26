import 'package:flutter/material.dart';

class DialogDemosView extends StatelessWidget {
  const DialogDemosView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){

        showDialog(context: context, builder: (context){
          return  Dialog(
            backgroundColor: Colors.orange.shade900,
            child: InteractiveViewer(child: Image.asset('assets/png/gs1905.png')),);
        });
      }),
      appBar: AppBar(),
      
    );
  }
}

//InteractiveViewer fotoyu yaklaştırmamı sağladı