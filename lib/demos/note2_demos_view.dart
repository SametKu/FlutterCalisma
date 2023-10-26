import 'package:flutter/material.dart';

class NoteDemos2 extends StatelessWidget {
  const NoteDemos2({super.key});
  final String kingTitle='Tek krallık Galatasaraylılık';
  final String becomeTitle='Become Cimbom';
  final String sampiyonTitle='If you say Cimbom Galatasaray Sampiyonum Cimbomum we wanna see you with us. Lets Gala fan join us on Telegram and support your team.';
  final String letsTitle='Lets Big Gala Fan, Click Right Below';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12 ,
      appBar: AppBar(title:   Center(child: _KingWidget(kingTitle: kingTitle)),),
      drawer: const Drawer(),
      body:  Center(
        child: Padding(
          padding: PaddingItems().horizontalpadding,
          child: Column(
            
            children: [
                  SizedBoxItems().height,
                  SizedBox(height:SizedBoxItems().height2 ,
                  child: Center(child: _ImageItems(path: ImageItems().cimbomImage))),
                   Padding(
                     padding: PaddingItems().verticalpadding,
                     child: _CimbomWidget(becomeTitle: becomeTitle),
                   ),
                     _SampiyonWidget(sampiyonTitle: sampiyonTitle, textAlign: TextAlign.center,),
                      Padding(
                       padding:  PaddingItems().verticalpadding,
                       child: ButtonWidget(letsTitle: letsTitle),
                     ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.telegram_outlined))
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.letsTitle,});
  final String letsTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: PickColors().turquoiseBlue) , onPressed: null, child:   Text(letsTitle)
    );
  }
}

class _SampiyonWidget extends StatelessWidget {
  const _SampiyonWidget({super.key, required this.sampiyonTitle, this.textAlign=TextAlign.center,});

  final String sampiyonTitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(sampiyonTitle, 
     
    style:Theme.of(context).textTheme.bodySmall?.copyWith(color:PickColors().red));
  }
}

class _CimbomWidget extends StatelessWidget {
  const _CimbomWidget({super.key, required this.becomeTitle,});

final String becomeTitle;

  @override
  Widget build(BuildContext context) {
    return Text(becomeTitle, 
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.grey, fontWeight: FontWeight.w600), 
    );
  }
}

class _KingWidget extends StatelessWidget {
  const _KingWidget({super.key, required this.kingTitle,});

  final String kingTitle;

  @override
  Widget build(BuildContext context) {
    return Text(kingTitle, 
    textAlign: TextAlign.center,
    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: PickColors().red),);
  }
}

class ImageItems{
   final String cimbomImage='gs1905';
}

class _ImageItems extends StatelessWidget {
  const _ImageItems({super.key, required this.path,});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_newPath, );
  }

  String get _newPath => "assets/png/$path.png";
}

class PaddingItems{

      final EdgeInsets horizontalpadding= const EdgeInsets.symmetric(horizontal: 20);
      final EdgeInsets verticalpadding= const EdgeInsets.symmetric(vertical: 20);
      
}

class SizedBoxItems{

      final SizedBox height= const SizedBox(height: 35,);
      final double height2=200;
}

class PickColors{
 final Color turquoiseBlue=const Color(0xff61EDE4);
 final Color red= Colors.red;
}

// Abi öncelikle body'ndeki Column'a horizontal bi padding vereceksin. Ardına altına gelecek title'lara bi vertical padding ver.
// Ardına gördün ya hani Text widgetların epey bi özellikli oldu onları extract widget yap.
// Ek olarak bi padding ve image class'ını yap daha tatlı olsun ;).
