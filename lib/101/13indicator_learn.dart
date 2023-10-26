import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [ CenterCircularProgress()],
      ),
      body: const Column(
        children: [
          
          CenterCircularProgress(),
          SizedBox(height: 100,),
          LinearProgressIndicator(
            color: Colors.white,
          ),
        ],
      ), 
            

    );
  }
}

class CenterCircularProgress extends StatelessWidget {
  const CenterCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
} 

//Abisi şimdik bi loadingIndicatorü kullanacaksan bu her yerde aynı olacak. Bu sebeple koysana main klasörünün içersinde 'Theme kısmının içindeki özelleştirsene gönlümüz şennlensin.