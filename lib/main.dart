import 'package:firs_project/personal_projects/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());//ALI DAYI
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: 
            //LightTheme().theme,
     ThemeData.dark().copyWith(
      
     cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
     listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
     progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
     appBarTheme: const AppBarTheme(
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      systemOverlayStyle: SystemUiOverlayStyle.light //şokomelli, aslında hepsi gibi. Saatin veya diğerlerinin karanlık görünmemesi icin
           
        )
      ),
      home:  const LogInPage() ,
    );
  }
}

// assets'lerimizin içerisinde localization(yani language'lerimizi), Projenşn config dosyalarını, Image'larımızı, giflerimizi lotifaclarımızı, SVC'lerimizi tutabiliyoruz. 
// bir yerde komponentlerin üst üste binmesi varsa kesin olarak stack kullanacağ
