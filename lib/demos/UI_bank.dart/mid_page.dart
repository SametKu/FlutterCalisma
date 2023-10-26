import 'package:firs_project/demos/UI_bank.dart/front_page.dart';
import 'package:flutter/material.dart';

import 'confirm_page.dart';

// ignore: must_be_immutable
class MidPage extends StatelessWidget {
  const MidPage({super.key});

    final double _totalValue=1000000;

    double _dayValue(double _totalValue){
      return _totalValue*0.98933;
    }
  
  final int _comision=80;

  double _paymentValue(){
    return (_dayValue(_totalValue)-_comision);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(child: Text('Ödeme Yap', 
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold),)),
            ),
      
            Expanded(
              flex: 3,
                child: Card(
                margin: EdgeInsets.zero,
                color: Colors.grey.shade800,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Toplam Tutar'),
                                  Text(_totalValue.toString()+'₺')
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Bugün ödenirse'),
                                  Text(_dayValue(_totalValue).toString()+'₺')
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Komisyon Tutarı'),
                                  Text(_comision.toString()+'₺')
                                ],
                              ),
                            ),
                            const Divider(color: Colors.white,thickness: 0.5,),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Ödenecek Toplam Tutar'),
                                  Text(_paymentValue().toString()+'₺')
                                ],
                              ),
                            ),
                      ]),
                    ),
                  ),
              ),
            ),
            const Spacer(flex: 5,),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Expanded(
                flex: 1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade800,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                    onPressed: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const ConfirmPage();
                          
                         },fullscreenDialog: true, ));
                    }, 
                    child: const Text('Tamamını öde')),
                ),
              ),
            ),

            InkWell(  
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const FrontPage();
                          
                         },fullscreenDialog: true, ));
            }, 
            child:  Text('Belirlediğim tutarı öde',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration:TextDecoration.underline ), ),),
            const SizedBox(height: 50,)  
          ],  
        ),
      ),

    );
  }
}


