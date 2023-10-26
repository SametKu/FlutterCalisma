import 'package:flutter/material.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> {
//Color _backgroundColor=Colors.white;
bool _changeColor=true;

void _ChangeColor(){
    _changeColor=!_changeColor;
}



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      backgroundColor: _changeColor ? Colors.amber : Colors.purple,
      extendBody: true,
      floatingActionButton: FloatingActionButton(onPressed: (){
        
        showModalBottomSheet(
          context: context,
          //backgroundColor: _backgroundColor,
          //barrierColor: Colors.transparent,// Arka fondaki renk
          isScrollControlled: true,// aşağıdan yukarı tüm ekran boyunca olmasını sağlar
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))), 
           builder: (context){
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Divider(color: Colors.grey, indent: MediaQuery.of(context).size.width*0.45,
                          endIndent: MediaQuery.of(context).size.width*0.45, ),
                           Positioned(
                            top: 0,
                            right: 20,
                            child: InkWell(

                              onTap: (){
                                Navigator.of(context).pop();},
                                child: const Icon(Icons.clear, size: 15), ))
                        ],
                      ),
                     Text('data', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black),),
                     Image.asset('assets/png/spidey.png', height:200 ,),
                     ElevatedButton(onPressed: (){
                      setState(() {
                       // _backgroundColor=Colors.black;
                      });
                      Navigator.of(context).pop();
                     }, child: const Text('OK'))
                  ],
                ),
              );
        });
      },backgroundColor: Colors.grey.shade600,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:   BottomAppBar(
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        child: TabBar(tabs: [
        const Tab(icon: Icon(Icons.home)),
        Tab(icon: IconButton(onPressed: (){
          setState(() {
            _ChangeColor(); 
          });
        }, icon: const Icon(Icons.search))),
        const Tab(icon:Icon(Icons.favorite)),
        const Tab(icon:Icon(Icons.person),)
        
        ]),)

    ));
    
  }
}