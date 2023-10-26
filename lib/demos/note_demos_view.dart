import 'package:firs_project/101/10image_learn.dart';
import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
final String title = "Create Your First Note";
final String subTitle='Whenever you want can add a new note cause of this app. Dont get them to your mind, that is the easy way to hide. Join our family with this app';
final String newNote='Create a Note';
final String importingnote="Import Notes";
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
       // title:  Text("Welcome HomePage", style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),),
      ),
      body: Padding(
        padding: PaddingItems().horizontalPadding,
        child:  Column(
          children: [
            Center(child: PngImages(path: ImageItems().applewithoutbook)),
             _TitleWidget(title: title),
             Padding(
               padding: PaddingItems().verticalPadding,
               child:  _SubTitleWidget(subTitle:subTitle, textAlign: TextAlign.center, ), // Burada diğer sayfalar için adama bu gücü kazandırdık. Ne o güç? sağdan soldan başlatma gücü
             ),
             const Spacer(),

             ElevatedButton(onPressed: (){}, child:  SizedBox(
              height: ButtonSize().buttonHSize,
              width: ButtonSize().buttonWSize,
              child:  Center(child: Text(newNote)))),
             TextButton(onPressed: (){}, child:  Text(importingnote)),
              SizedBox(height: ButtonSize().buttonHSize)

          ],
        ),
      ), 
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({super.key, this.textAlign=TextAlign.center, required this.subTitle,});
  final String subTitle;
  final TextAlign textAlign; 
  @override
  Widget build(BuildContext context) {
    return Text(subTitle,
    textAlign: textAlign ,
    style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.black, fontWeight: FontWeight.w400),);
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({super.key,required this.title,});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, 
          textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black,
         fontWeight: FontWeight.w800), 
    );
  }
}

class PaddingItems{
    final EdgeInsets horizontalPadding= const EdgeInsets.symmetric(horizontal: 20);
    final EdgeInsets verticalPadding= const EdgeInsets.symmetric(vertical: 10);
}


class ButtonSize{
  final double buttonHSize=40;
  final double buttonWSize=165;
}