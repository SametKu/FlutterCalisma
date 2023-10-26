import 'package:flutter/material.dart';

class CustomLearn extends StatelessWidget {
  const CustomLearn({super.key});
  final String boTitle='Food';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10), // İçten genişleteceğin zaman kendi statedinden dıştan olacağı zaman ana stateden.
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomFoodButtonItem(boTitle: boTitle, onPressed: () {},)),
                ),
              ),
              const SizedBox(height: 100,),
              CustomFoodButtonItem(boTitle: boTitle, onPressed: () {
                
              },),
            ],
          ),
    );
  }
}

mixin PaddingUtility{
  final EdgeInsets newpadding= const EdgeInsets.all(10);
  final EdgeInsets newpadding2x= const EdgeInsets.all(20);
}

class CustomFoodButtonItem extends StatelessWidget with ColorsUtility,PaddingUtility{
   CustomFoodButtonItem({super.key,required this.boTitle, required this.onPressed,});

  final String boTitle;
  final void Function() onPressed;
 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, 
    style: ElevatedButton.styleFrom(backgroundColor: rColor, shape: const StadiumBorder()),
    child:  Padding(
      padding: newpadding2x,
      child: Text(boTitle, 
      style:Theme.of(context).textTheme.titleSmall?.copyWith(color: wColor,fontWeight: FontWeight.bold)),
    ),);
  }
}

mixin ColorsUtility{
  final Color wColor=Colors.white;
  final Color rColor=Colors.red;
}