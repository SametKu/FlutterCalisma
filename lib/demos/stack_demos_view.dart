

import 'package:firs_project/core/random_image.dart';
import 'package:flutter/material.dart';


class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Expanded(flex: 4,
        child: Column(
          children: [
             Stack(
              
               children: [
                   const Positioned.fill(child: RandomImage()),
                   Positioned(
                    height: 50,
                    width: 200,
                    left:0 ,
                    child: Card(
                        
                          color: Colors.white,
                          child: Center(child: Text("Fuck You Matt ", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),)),
                  )),
                  Positioned(
                    height: 50,
                    width: 200,
                    top: 55,
                    right:0 ,
                    child: Card(
                        
                          color: Colors.white,
                          child: Center(child: Text("Fuck you Jonny", style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),)),
                  ))
               ],
             ),
          ],
        ),
      )
          
       
     
    );
  }
}