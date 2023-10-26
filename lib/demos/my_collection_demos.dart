import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel>_items;

  @override
  void initState() {
    super.initState();
    _items=CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          padding: PaddingUtility().symhor,
          itemCount: _items.length,
          itemBuilder: (context, index) {
          return  _CategoryCard(model: _items[index],);
        },),

    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({super.key,
    required CollectionModel model,}) : 
    
    _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtility().sym,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: PaddingUtility().allPad,
          child: SizedBox(height: 200,
                  
          child: Column(
            children: [
              Expanded(child: Padding(
                padding: PaddingUtility().allPad2,
                child: Image.asset(_model.imagePath, fit: BoxFit.fill,),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.tTitle, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black, fontWeight:FontWeight.bold ),),
                  Text('${_model.wallet} eth', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.black), ),
                ],
              )
              
            ],
          ),),
        )
        ,
      ),
    );
  }
}


class CollectionModel{
  final String imagePath;
  final String tTitle;
  final double wallet;

  CollectionModel({required this.imagePath, required this.tTitle, required this.wallet});

}

//iniStatei statefullun constrocturıdır.

class PaddingUtility{
  final symhor=const EdgeInsets.symmetric(horizontal:20);
  final sym= const EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  final allPad=const EdgeInsets.all(8.0);
  final allPad2= const EdgeInsets.all(5.0);
}

class CollectionItems{

  late final List<CollectionModel>items;
  CollectionItems(){
    items=[
            CollectionModel(imagePath: ProjectImages().collectionImage, tTitle: 'Your Account', wallet: 45.67),
            CollectionModel(imagePath: ProjectImages().collectionImage, tTitle: 'Your Account', wallet: 45.67),
            CollectionModel(imagePath: ProjectImages().collectionImage, tTitle: 'Your Account', wallet: 45.67),
            CollectionModel(imagePath: ProjectImages().collectionImage, tTitle: 'Your Account', wallet: 45.67),
    ];
  }
}

class ProjectImages{
    final String collectionImage='assets/png/mycollection.png';
}