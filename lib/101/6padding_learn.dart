import 'package:flutter/material.dart';


class PaddingLearn extends StatelessWidget {
   PaddingLearn({super.key});
  final PaddingChoose pad1= PaddingChoose();
  final PaddingChoose pad2= PaddingChoose();
  final PaddingChoose pad3= PaddingChoose();
  final Names names= Names();
  final Renkler coloritem=Renkler();
  final Renkler coloritem2= Renkler();
  final double size=100;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body:  Padding(
          padding: pad1.paddingUseType,     //Öncesi böyleydi aslanım artık classlardan okuyoruz. const EdgeInsets.symmetric(horizontal: 10),// hepsine padding ekleyeceğine onları sarmalayan yapıya koy bir kere paddingi ve değerini kafa rahat etsin kral.;)
          child: Column(
                children: [
                  Padding(padding:pad2.paddingUseType2 ,child: Container(color: Colors.white,height: size,)), // Bak burda ilk iki tanesinde sadece örnek için verdim hee.
                  Padding(
                    padding: pad3.paddingUseType3,
                    child: Container(color: coloritem.c1,height: size,),
                  ),
                     Text(names.name, style: Theme.of(context).textTheme.headlineMedium,),
                  
                     Container( height: size,color: coloritem.c2,
                      ),
                    
                ],
        
          ),
        )


    );
  }
}

class PaddingChoose{
  final paddingUseType= const EdgeInsets.symmetric(horizontal: 50);
  final paddingUseType2= const EdgeInsets.all(10)+ const EdgeInsets.symmetric(vertical: 10);
  final paddingUseType3= const EdgeInsets.symmetric(vertical: 35, horizontal: 35);
}

class Names{
  final String name= "KUS";
}

class Renkler{
  final Color c1= Colors.white;
  final Color c2= Colors.yellow;
}