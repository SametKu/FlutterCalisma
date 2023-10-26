import 'package:flutter/material.dart';

class ImageLearnMid extends StatefulWidget {
  const ImageLearnMid({super.key});

  @override
  State<ImageLearnMid> createState() => _ImageLearnMidState();
}

class _ImageLearnMidState extends State<ImageLearnMid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePaths.spidey.toWidget(),
    );
  }
}

enum ImagePaths{
  spidey 
}

extension ImagePathsExtension on ImagePaths{
String path(){
  return 'assets/png/$name.png';
}

Widget toWidget(){
  return Image.asset(path());
}
}