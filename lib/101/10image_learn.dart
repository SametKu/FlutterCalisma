// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:   Column(
        children: [

              Center(
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: PngImages(path: ImageItems().applewithoutbook)
                ),
              ), 

                      
        ],
      ),
    );
  }
}

class ImageItems{
      final String applewithbook="assets/png/image1.png";
      final String applewithoutbook="image1";

}

class PngImages extends StatelessWidget {
  const PngImages({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover,);
  }

  String get _nameWithPath => 'assets/png/$path.png';
}

//Burada mükemmel işler var image ekleyeceğin zaman iyi incele.