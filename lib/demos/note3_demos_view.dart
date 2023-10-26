
import 'package:flutter/material.dart';

class NoteDemos3 extends StatelessWidget {
  const NoteDemos3({super.key});
  final String title='GIRLS HERE !';
  final String cText='THAT IS THE HERO YOU WANTED TO SEE';
  final String dcText='SHOW HİM A GUILTYGUY THEN STAND YOUR BACK AND WATCH HOW HE BEATS THEM ALSO WİTH YOUR SEATS';
  final String sText='or';
  final String buttonText='WIN';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:   Center(child: Text(title, style:Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeightItems().tFont , color: ColorPick().bColor))),
        //backgroundColor: Colors.red,
      ),
        body:  Padding(
          padding:  PaddingItems().horizontalSide,
          child:  Column(
            children: [
                  Center(child: _CenterText(cText: cText)),
                  _ImagePicker(path: ImagesPick().spideyImage),
                  _DownCenterText(dcText: dcText),
                  Padding(
                    padding: PaddingItems().onlyTopSide,
                    child: ElevatedButton(onPressed: (){}, child: Text(buttonText)),
                  ),  
                   Padding(
                    padding: PaddingItems().verticalSide,
                    child:  Text(sText),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.local_see),),
                   /*Row(
                    children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.hearing_outlined)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.web_asset_outlined)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.line_style_outlined)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.food_bank_outlined)),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.gamepad_outlined))
                    ],
                                   )*/
 ],
          ),
        ),
      
    );
  }
}

class _DownCenterText extends StatelessWidget {
  const _DownCenterText({super.key,required this.dcText, this.textAlign= TextAlign.center,});

  final String dcText;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(dcText, 
    textAlign: textAlign,
    style:Theme.of(context).textTheme.bodySmall?.copyWith(color: ColorPick().wColor, 
    fontWeight: FontWeightItems().dcFont));
  }
}

class _CenterText extends StatelessWidget {
  const _CenterText({super.key,required this.cText,});

  final String cText;

  @override
  Widget build(BuildContext context) {
    return Text(cText,
    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: ColorPick().gColor, fontWeight: FontWeightItems().ctFont),
    textAlign: TextAlign.center, );
  }
}

class _ImagePicker extends StatelessWidget {
  const _ImagePicker({super.key, required this.path,});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_imagePath);
  }

  String get _imagePath => 'assets/png/$path.png';
}

class ColorPick{
  final Color bColor= Colors.blue;
  final Color gColor=Colors.grey.shade200;
  final Color wColor=Colors.white70;
}

class FontWeightItems{
    final FontWeight tFont= FontWeight.w700;
    final FontWeight ctFont= FontWeight.w800;
    final FontWeight dcFont= FontWeight.w300;
}

class PaddingItems{
  final EdgeInsets horizontalSide= const EdgeInsets.symmetric(horizontal:30);
  final EdgeInsets onlyTopSide= const EdgeInsets.only(top: 20);
  final EdgeInsets verticalSide= const EdgeInsets.symmetric(vertical: 10);
}

class ImagesPick{
    final String spideyImage= 'spidey';
}