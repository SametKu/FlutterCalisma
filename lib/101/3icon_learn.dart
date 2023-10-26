import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize= IconSizes();
  final IconColors iconColor= IconColors();
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Hello Again'),
        ),
        body:  Column(
          children: [
            IconButton(onPressed: (){}, icon:  Icon(Icons.message_outlined,
             color: Theme.of(context).colorScheme.background, 
             size:iconSize.iconSmall)),
             
             IconButton(onPressed: (){}, icon:  Icon(Icons.message_outlined,
             color: iconColor.tanzine, 
             size:iconSize.iconSmall)),

             IconButton(onPressed: (){}, icon:  Icon(Icons.message_outlined,
             color: iconColor.tanzine, 
             size:iconSize.iconSmall))

          ],
        ),
    );
  }
}

class IconSizes{
  final double iconSmall=40;
}

class IconColors{
    final Color tanzine= const Color(0xff7e88dd);
}