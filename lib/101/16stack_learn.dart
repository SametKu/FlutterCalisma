
import 'package:firs_project/core/random_image.dart';
import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body:   const Column(
          children: [ 
              Expanded(flex: 4,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned.fill(
                      bottom: 25,
                      child: RandomImage()),
                    Positioned(
                      width: 200,
                      height: 50,      
                      child: Card(color: Colors.orange,))
                   
                  ],
                ),
              ),
            Spacer(flex: 6,)
          ],
        )

    );
  }
}

// üst üste çakışık uygulamalarda kullanırız demolarda örneği var incele.