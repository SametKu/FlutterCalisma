
import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  

  @override
  State<StatefullLifeCycleLearn> createState() => _LifeCycleLearnState();
}

class _LifeCycleLearnState extends State<StatefullLifeCycleLearn> {
   String _message= '';
   late final bool _isEven;
  @override

  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {   // Olan değişikliği kolayca update etmemize yarar.
    
    super.didUpdateWidget(oldWidget);
    if(oldWidget != widget.message){
      _message=widget.message;
      _computeName();
      setState(() {
        
      });
    }
  }
  
     @override
  void initState() { 
      //initState'leri sınıfların içindeki constructorlar gibi düşünülebilir.
    super.initState();
    
    _message=widget.message;
    _isEven=widget.message.length.isEven;

      _computeName();
    
  }

  void _computeName() {
    if(_isEven){
      _message+='Cift';
    }
    else{
      _message+='Tek';
    }
  }

  @override
  void dispose() {  // sayfa kapandıktan sonra önceki değeri öldürmek için
    super.dispose();
    _message='';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isEven ? const Text('Kelime cift') : const Text('Kelime tek'),
      ),
      body:_isEven ? TextButton(onPressed: (){},child: Text(_message),) 
      : ElevatedButton(onPressed:() {}, child:  Text(_message))
    );
  }
}