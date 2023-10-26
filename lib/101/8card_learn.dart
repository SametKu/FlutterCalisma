import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:     Column(
            children: [
                const _CustomCARD1(child:  SizedBox(height: 100,width: 150, child: 
              Center(child: Text("ALI BURAK")))
              ),
                const CARD2(),
               Card( 
                color: Theme.of(context).colorScheme.error,
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child:   const SizedBox(height: 200,width: 300,)

              
              )
              
            ],
      ),
    );
  }
}

class CARD2 extends StatelessWidget {
  const CARD2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card( 
     color: Colors.black,
     shape: const StadiumBorder(),
              child:  Container(height: 100,width: 300,child: const Center(child: Text("SAMET")),)
              );
  }
}

class _CustomCARD1 extends StatelessWidget {
  const _CustomCARD1({super.key, required this.child,});
   final circleBorder = const CircleBorder();

  final Widget child;
                                    //BU COK SEKER OLDU İNCELE
  @override
  Widget build(BuildContext context) {
    
    return Card(
     color: Theme.of(context).colorScheme.error,
     shape: circleBorder, 
    child: child ,
    
    );

  }
}

// StadiumBorder(), CircleBorder(), 
// sunu bil en güçlü ve doğru yola giderken hataların ve istemeden yaptığın hataların olacaktır oldu da. Gerideki olaylara takılıp kalmak yerine o gün ve ilerisi için neler öğrenebileceğine odaklan. Böylelikle hedefine ulaşman muhakkak olacak ve keyfini de süreceksin. Unutma aslan parçası yanlış veya hata yaptığında değil odaklanamayıp istikrar gösteremediğin zaman kaybedeceksin. İçindeki öğrenme açlığını hiçbir zaman kaybetme. Seni dinç ve aktif tutacak olan budur. Kendine gel ve 1 haftalık periyoddaki çalışma performansına geri dön ve bu işi hallet.SK
// Bugün özel widget, Row yapısını ve Expanded indicatorü öğreneceğim