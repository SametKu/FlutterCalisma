import 'package:firs_project/demos/UI_bank.dart/front_page.dart';
import 'package:firs_project/demos/UI_bank.dart/mid_page.dart';
import 'package:flutter/material.dart';

import 'confirm_page.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(),
      body:  
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Expanded(flex: 1,
            child: Center(child: Text('Ödeme Yap', 
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold),),),
          ),
      
         Expanded(flex:4,
           child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                
                children: [
                
                    const Expanded(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text('Tahsilat Tarihi',),
                           Text('Tahsilat Günü'),
                           Text('Tutar'),
                        ],
                      ),
                    ),
                    const Expanded(child: Divider(thickness:0.5, color:Colors.white,)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text('27.07.2023'),
                              OutlinedButton(onPressed: (){}, 
                              style:OutlinedButton.styleFrom(shape: const CircleBorder(),foregroundColor: Colors.white,),
                              child: const Icon(Icons.chevron_right_outlined), )
                            ],
                          ),
                          const Padding(
                            padding:  EdgeInsets.only(right: 15),
                            child:  Text('20.Gün'),
                          ),
                          const Text('29.000₺')
                        ],
                      ),
                    ),
                
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.check_box_outline_blank_outlined),),
                              const Text('30.08.2023')
                            ],
                          ),
                          const Text('40.Gün'),
                          const Text('23.000₺')
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.check_box_outline_blank_outlined),),
                              const Text('01.11.2023')
                            ],
                          ),
                          const Text('70.Gün'),
                          const Text('21.000₺')
                        ],
                      ),
                    ),
                
                    const Expanded(child: Divider(thickness: 0.5,color: Colors.white,)),
                    const Expanded(
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kalan Toplam'),
                          Text('44.000₺')
                        ],
                      ),
                    )
                
                  
                ],             
                ),
              ),
            ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                InkWell(onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const FrontPage();
                          
                         },fullscreenDialog: true, ));
                }, child: Text('Belirlediğin tutarı öde', 
                style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration:TextDecoration.underline ),) ,),
                const SizedBox(),  
              ],
            ),
          ),
          const Spacer(flex: 3,),
          Expanded(flex: 1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const ConfirmPage();
                          
                         },fullscreenDialog: true, ));
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple.shade800,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: const Text('Kart ile öde'),),
              )),
          ),
      
             Expanded(flex: 1,
               child: InkWell(onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const MidPage();
                          
                         },fullscreenDialog: true, ));
               },
                       child:  Text('Para Transferi ile Öde',style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration:TextDecoration.underline ))),
             )
      
      ],),
      ),


       
      
    );
  }
}