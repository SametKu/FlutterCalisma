

import 'package:firs_project/demos/note2_demos_view.dart';
import 'package:firs_project/demos/note3_demos_view.dart';
import 'package:firs_project/demos/note_demos_view.dart';



import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});
  

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController=PageController(viewportFraction: 0.98);
   //int _pageNum=1;

   int _currentPAge=0;

 /* void changesOnPages(bool isIncrement){
      if(isIncrement ){
        _pageNum++;
      }
       else{
        _pageNum--;
      }
      setState(() {});
  }
  */

   // VEYA bir başka yoldan

    void _updatePageIndex(int index){
      _currentPAge=index+1;
      setState(() {
        
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton(onPressed: (){
              _pageController.previousPage(duration: _DurationUtility()._durationLow, curve: Curves.bounceIn);
             
            }, child: const Icon(Icons.chevron_left),),
          ),
           Text(_currentPAge.toString(), style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),),
          FloatingActionButton(onPressed: (){
           _pageController.nextPage(duration: _DurationUtility()._durationLow, curve: Curves.slowMiddle);
           
          }, child: const Icon(Icons.chevron_right),),
        ],
      ),
      appBar: AppBar(title: const Text('PROJECTS'),),
      body: PageView( 
        onPageChanged: _updatePageIndex,
        padEnds: false,  //ifadenin baştan mı sondan mı başlayacağını belirler. 
        controller: _pageController,
        children: const [
           NoteDemos(),
           NoteDemos2(),
           NoteDemos3(),
        ],
      ),
    );
  }
}

class _DurationUtility{
  final _durationLow= const Duration(seconds: 1);
}

//birden fazla image array olduğunda kullanılabilir