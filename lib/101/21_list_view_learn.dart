import 'package:flutter/material.dart';

//ListView bir sonsuzluktur. Liste vertical veya horizontal olacak şekilde sonsuza kadar uzayabilir.

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Text('Merhaba', style: Theme.of(context).textTheme.displayLarge, maxLines: 1,),
          Container(height: 200, color: Colors.red,),
          const Divider(),
          Container(height:200, color: Colors.yellow,),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          Container(height: 200, color: Colors.brown,), 
          
          //XX   
 
          Text('Merhaba', style: Theme.of(context).textTheme.displayLarge, maxLines: 1,),
          Container(height: 200, color: Colors.red,),
          const Divider(),
          Container(height:200, color: Colors.yellow,),
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          Container(height: 200, color: Colors.brown,), 

          
        ],
      ),


    );
  }
}

// FittedBox() ile yazılarını sayfa ölcülerine alabilirsin ;)

 /*SizedBox(height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
                Container(width:200, color: Colors.yellow,),
              ],
            ),
          ),   YANA DOĞRU UZANIM İCİN
          */