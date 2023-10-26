import 'package:flutter/material.dart';


class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> {
  bool _isVisible=true;
  
  bool _isOpacity=true;

  bool _sizeCheck=true;

  void _changeScreen(){
    setState(() {
      _isVisible=!_isVisible;
    });
  }

  void _changeOpacity(){
    setState(() {
      _isOpacity=!_isOpacity;
    });
  }

  void _sizeChecked(){
    setState(() {
      _sizeCheck=!_sizeCheck;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //Text('Samet', style: context.textTheme().titleLarge,));
      floatingActionButton: FloatingActionButton(onPressed: (){
        _changeScreen();
        _sizeChecked();
        
      }),
      appBar: AppBar(title :AnimatedCrossFade(firstChild: const Placeholder(), 
      secondChild: const SizedBox(), 
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
      duration: const Duration(seconds: 1)),),

      body:  Column(
        children: [
          ListTile(
              title:  AnimatedOpacity(
                duration:  const Duration(seconds: 1),
                opacity: _isOpacity ? 1 : 0,
                child:  const Text('samet')),
              trailing: IconButton(onPressed: (){_changeOpacity();}, icon: const Icon(Icons.add_location_alt_outlined)),
          ),

           AnimatedDefaultTextStyle( style: (_sizeCheck ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.headlineLarge) ?? const TextStyle(),
            duration:  const Duration(seconds: 1),
            child: const Text('samet'),),

            AnimatedContainer(duration:const Duration(seconds: 1), height: _sizeCheck ? 0 :  100, width: 100, color: Colors.blue,),

             Expanded(child: Stack(

              children: [
                AnimatedPositioned( 
                  top:_sizeCheck ? 0: 100,
                  duration: const Duration(seconds: 5),
                  child: Image.asset('assets/png/spidey.png', height: 200,),)
              ],
            ))
        ],
      )  , 
      

      );
  }
}

extension BuildContextExtension on BuildContext{

  TextTheme textTheme(){
    return Theme.of(this).textTheme;
  }
}

//Duration'ları dışarı bir class'a topla**

/*   
    class _DurationItems{
      
    final _durationLow= Duration(seconds:1)
    }
 */


// _isVisible ? const Placeholder() : null Kullanısli bir yazım dikkate alabilirsin. AnimatedCrossFade en çok kullanılanlardan. 