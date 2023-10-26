import 'package:firs_project/demos/UI_bank.dart/confirm_page.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key,});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

  int _currentvalue=0;
  final int comision=80;

  void exportValue(String value){
    final _value= int.parse(value);
    if(_value > 0){
      setState(() {
        _currentvalue=_value;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            
          children: [
            Expanded(
              child: Stack( 
                children: [
                  Center(child: Text('Ödeme Yap', style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),)),
                  Positioned(right: 0,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.clear,color: Colors.white,)))
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Row(
                  
                  children: [
                    Text('Kendi belirlediğiniz tutari giriniz',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),),
                    const SizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextField(
                    onChanged: (value) {
                      exportValue(value);
                    },
                   decoration:
                    InputDecoration(border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.yellow,width: 0.0),
                      borderRadius: BorderRadius.circular(15))),
                      ),
              ),

              Spacer(flex:5,),
              
                 Expanded(flex: 3,
                   child: Card(
                    
                    margin: const EdgeInsets.only(bottom: 15),
                        color: Colors.grey.shade800,
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Container(height: 140, width: MediaQuery.of(context).size.width, child:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Tutar'),
                                    Text(_currentvalue.toString()+'₺')
                                  ],
                                ),
                              ),
                               Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Komisyon Tutarı'),
                                    Text(comision.toString()+'₺')
                                  ],
                                ),
                              ),
                              const Expanded(child: Divider(color: Colors.white, thickness: 0.5,)),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Ödenecek toplam tutar'),
                                    Text((_currentvalue+comision).toString()+'₺'),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),),
                                 ),
                 ),  
                
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade800,  
                      shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15))),
                      onPressed: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const ConfirmPage();
                          
                         },fullscreenDialog: true, ));
                      }, child: const Text('Öde'))),
                ),   
              const Spacer(),
          ],
        ),
      ),
    );
  }
}

