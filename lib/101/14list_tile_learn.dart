import 'package:firs_project/core/random_image.dart';
import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:   Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
              Card(
                //color: Theme.of(context).colorScheme.error,
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                     // dense: true, companentin paddinglerini kırar ve sıkıştırır.
                      
                      onTap: () {}, // bu sayede onTap ile birlikte tüm listtile tıklanabilir oldu.
                      title: const RandomImage(),
                      subtitle: const Text('Here is the fastest car in the world', textAlign: TextAlign.center,),
                      leading:  Container(height: 100,alignment: Alignment.topCenter,width: 20,
                      child: const Icon(Icons.person_2_outlined)),
                      trailing: const Icon(Icons.chevron_right_outlined),
                  ),
                ),
              ) 
          ],
        ),
      ),
    );
  }
}

//contentPadding çok önemlidir. Ben verecem abi contentPadding=EdgeInsets.zero ;) sonrasına tüm sayfaya paddingi gir.
// ListTile'ın sektörder en çok kullanım şekli Card ile sarmalanmış halidir.