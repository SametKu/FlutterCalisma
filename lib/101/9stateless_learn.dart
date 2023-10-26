import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  const StatelessWidgetLearn({super.key});
  final String  title2 = 'Samet1';
  @override
  Widget build(BuildContext context) {
    
    return   Scaffold(

            appBar: AppBar(),
            body:  Column(
               children: [
                         TitleTextWidget(title: title2,), // Boyle cikar gel benim canimi ye.
                   _spacedBox(),
                   const TitleTextWidget(title: 'Samet2',), // Boyle degil üstteki gibi geliseceğiz.
                   _spacedBox(),
                   const TitleTextWidget(title: 'Samet3',),
                   _spacedBox(),
                   const TitleTextWidget(title: 'Samet4',),
                   _spacedBox(),         
                   const _ContainerWidget(),
                   _spacedBox()

              ],
            ),

    );
  }

  SizedBox _spacedBox() => const SizedBox(height: 10,);
}

class _ContainerWidget extends StatelessWidget {
  const _ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lime,
          ),
          );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title ,style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.red)));
  }
}
