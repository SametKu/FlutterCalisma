import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Column(
         children: [
             Container(
              height: 100,
             child: const Column(
              children: [
                  Expanded(child: Text("data")),
                  Expanded(child: Text("data")),
                  Expanded(child: Text("data")),
                  Spacer(),
                  Expanded(child: Text("data")),
              ],
             ),
            ),
          const Spacer(flex: 1,),
          const Expanded(flex: 1, child: FlutterLogo(),),
          
          
          Expanded(flex: 3,child: Row(
            children: [
              Expanded(child: Container(color: Colors.white,)),
              Expanded(child: Container(color: Colors.green,)),
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.blue,)),
             
            ],
          )),
          Expanded(flex: 2, child: Container(color: Colors.yellow,)),
          Expanded(child: Container(color: Colors.red,)),

         ],
        
      ),
       
    );
  }
}

//Expanded'lar sadece row ve column'larda kullanılabilir.

//Row'un içinde kullanacağımız mainAxisSize'lar çok önemli. Sürekli projelerde kullanıyoruz. mainAxisSize= mainAxisSize.min olacakki biz sonradan padding verebilelim.