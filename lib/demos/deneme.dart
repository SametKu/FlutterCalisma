import 'package:flutter/material.dart';

class DenemeLearn extends StatefulWidget {
  const DenemeLearn({super.key, required this.message});
  final String message;

  @override
  State<DenemeLearn> createState() => _DenemeLearnState();
}

class _DenemeLearnState extends State<DenemeLearn> {
   String _message='';
   late final bool _isOdd;

  int counterValue=0;
 
  @override
  void initState() {
    super.initState();
      _message=widget.message;
      _isOdd=widget.message.length.isOdd;
      _computeValue();
  }

  void _computeValue(){
    if(_isOdd){
      _message+='Cift';
    }
    else{
      _message+='Tek';
    }
  }
    


 void counterSituation(bool increasment){
      if(increasment){
        counterValue++;
      }
      else{
        counterValue--;
      }
      setState(() {});
 } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding:  const EdgeInsets.only(left: 20),
            child:  Text('GALATASARAY', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(onPressed:() {
                counterSituation(false);
              }, child: const Icon(Icons.remove),),
              FloatingActionButton(onPressed:() {
                counterSituation(true);
              }, child: const Icon(Icons.add),),

            ],
          ),
        ],
      ),
      appBar: AppBar(title: _isOdd? const Text('Kelime tek') : const Text('Kelime cift') ) ,
      body: Column(
        children: [
          _isOdd ? ElevatedButton(onPressed:() {}, child: Text(_message)): TextButton(onPressed:() {}, child: Text(_message)),
          Text(counterValue.toString(), style: Theme.of(context).textTheme.headlineLarge,),
        ],
      ),
      
            

              

      
      );
  }
}