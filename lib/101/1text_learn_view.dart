import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
   TextLearnView({super.key, this.userName});
  final String name="Samet";
  final String? userName;
  final ProjectKeys keys=ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 
              ('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.lime,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                wordSpacing: 2,
                letterSpacing: 3,
                fontSize: 15,
                fontWeight: FontWeight.w600,),
            ),


             Text( 
              ('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: ProjectStyles.welcomestyle,
            
            
            ),

            Text( 
              ('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color:ProjectColors.welcomeColors),
            
            
            ),
            

            Text(userName?? ''),
             Text(keys.welcome),

            
          ],
        ),
        ) ,
      );
  }
}

class ProjectStyles{

  static TextStyle welcomestyle= const TextStyle(
                color: Colors.lime,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                wordSpacing: 2,
                letterSpacing: 3,
                fontSize: 15,
                fontWeight: FontWeight.w600,);
}

class ProjectColors{
  static Color welcomeColors= Colors.lime;
}

class ProjectKeys{
  final String welcome='Merhaba';
}
