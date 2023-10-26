import 'package:firs_project/101/22_list_view_builder.dart';
import 'package:flutter/material.dart';

class TrainingSession extends StatelessWidget {
  const TrainingSession({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const ListViewBuilderLearn();
              }));

      }, child: const Icon(Icons.navigation_outlined)),   
      backgroundColor: Colors.red,
      appBar: AppBar(title:  Text('Welcome Home', 
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold,color: Colors.red),), 
      backgroundColor: Colors.orange,
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.settings))],
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_left)),),
      body:     Padding(
        padding:  const EdgeInsets.symmetric(vertical: 100),
        child:  SingleChildScrollView(
          child: Column(
            
            children: [
                    Stack(
                      children: [
                         Column(
                          children: [
                             const TextField(
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail),
                          labelText: 'Mail'
                      ),
                    ),
                       const Padding(
                         padding: EdgeInsets.only(top: 150),
                         child: TextField(
                           maxLength: 15,
                           decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),
                         ),
                       ),
                       Card(

                        color: Colors.transparent,
                         child: ListTile(
                         titleAlignment: ListTileTitleAlignment.center,
                         leading:  ElevatedButton(onPressed: (){}, child: const Icon(Icons.check)),
                         title: Text('Remember me', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w100),),),
                       )
                          ],
                        ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Center(child: Image.asset('assets/png/gs1905.png', height: 200,)),
                          ),
                      ],
                    ),],
          ),
        ),
        
      ),
      
             
    );
  }
}


/*
 TextField(
          autofocus: true, // Direkt o pencereded açılması için
          textInputAction: TextInputAction.next, //klavyede next butonu gelmesi için
            keyboardType: TextInputType.emailAddress, //klavyede @ butonu gelmesi için
            autofillHints: const [AutofillHints.email],
           decoration: _InputDecerator().inputDecerator,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: TextField(
              maxLength: 10,
              decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),


              class _InputDecerator{
  final inputDecerator=  InputDecoration(
            prefixIcon:  const Icon(Icons.mail),
            border: const OutlineInputBorder(),
            labelText: LanguageItems().mailTitle
           );
}






bottomNavigationBar: const BottomAppBar(
      notchMargin: 5, 
      shape: CircularNotchedRectangle(),
      child: TabBar(
      padding: EdgeInsets.zero,
      indicatorColor: Colors.red,
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.orange,
      tabs: [Tab(icon: Icon(Icons.home)), 
      Tab(icon:Icon(Icons.search)), 
      Tab(icon: Icon(Icons.favorite),), 
      Tab(icon: Icon(Icons.person),) ]),),











const TextField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'Mail'
                  ),
                ),
                Image.asset('assets/png/gs1905.png', height: 200,),

                   const TextField(
                     maxLength: 15,
                     decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Password'),
                   ),
              */