import 'package:flutter/material.dart';


class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final String _title='Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
              title:  Center(child:  Text(_title)),
              actions:  [IconButton(onPressed: (){}, icon:const Icon(Icons.mail)),
              const Center(child: CircularProgressIndicator())],//afilli sekilde dönen
              leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left),
              ),
              actionsIconTheme: const IconThemeData(color: Colors.lime, size: 35),
              automaticallyImplyLeading: false,//flutter back butonunu navigatorlerde otomatik veriyor ve bu ifadeyi false yaparak bu durumu engellemis oluruz.

        ),
     
    );
  }
}

//Şimdi coney benim 1 2 3 4 5 6 tane projem var diyelim mesela. Ben şimdi kalkıp tek tek hepsine appBar mı yapacağım. Ha yapabilirsin ama profesyonel olmak istediğimden hepsine tek tek yapmayacağım. Ne yapacağım peki??
//AppBarların ortak özelliklerini main.dart klasörümde *theme: ' nın altında .withcopy() aracılığıyla toplayacağım.
