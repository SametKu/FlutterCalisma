import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child:Text("Cimbom"*20),
          ),
          const SizedBox.shrink(),
          SizedBox.square(dimension: 50,
          child: Text("GS"*30)),

          Container(
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 100, maxHeight: 200,
            minHeight: 100),
            
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration:  ProjectContainerDecoration.boxDecoration,
            child: Text('SariKirmizi'*100, maxLines: 5),
          )
        ],
      ),
    );
  }

}


class ProjectContainerDecoration{

  static BoxDecoration boxDecoration= BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
              //shape: BoxShape.circle,
              
              boxShadow: const [BoxShadow(
                color:Colors.black,
                offset: Offset(0.1, 1),
                blurRadius: 10,
                
              )],
              border: Border.all(
                width: 5,
                color:Colors.white12,
              )
              

            );

}


class ProjectUtility extends BoxDecoration{
  ProjectUtility(): super( borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
              //shape: BoxShape.circle,
              
              boxShadow: const [BoxShadow(
                color:Colors.black,
                offset: Offset(0.1, 1),
                blurRadius: 10,
                
              )],
              border: Border.all(
                width: 5,
                color:Colors.white12,
              )
              

            );
}