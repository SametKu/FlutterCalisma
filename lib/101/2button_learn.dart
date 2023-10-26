import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child:  Text("SAVE", style: Theme.of(context).textTheme.titleMedium , )),
           SizedBox(width: 150, height: 30,
            child: ElevatedButton(onPressed: (){}, child:  Text("Add",style: Theme.of(context).textTheme.bodyMedium,))), //onPressed:null butonun tıklanamaz olmasına yarar. (){} yapısını geri yazdığımda eski halini alır. İnanmıyorsan dene. Diğer buton tipleri içinde yapabilirsin.
          const IconButton(onPressed: null, icon: Icon(Icons.wifi)),
          FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add)),
          OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: Colors.white, shape:const CircleBorder(), padding: const EdgeInsets.all(10)),
          onPressed: (){}, child: const Text("Submit"),),
           InkWell(onTap: (){} , child: const Text("custom")),
            const SizedBox(
              height: 15,
            ),
           Container(
            height: 40, color: Colors.white,
           ),
          const SizedBox(
            height: 10,
          ),
           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.black, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))) , onPressed: (){},   child:  Padding(
             padding:  const EdgeInsets.only(top: 10,bottom: 10, right: 20, left: 20),
             child: Text('Place Bid', style: Theme.of(context).textTheme.headlineLarge,),
           ),)
          
        ],
        
      ),
    
      drawer: const Drawer(),
    );
      
    

  }
}