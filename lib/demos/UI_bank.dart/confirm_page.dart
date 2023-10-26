import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.shade900,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Expanded(flex: 3,
                child: Center(
                  child: Image.asset('assets/png/alert_button.png'),
                ),
              ),
               Expanded(
                flex: 1,
                child: Text('İşleminiz Başarılı', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.green.shade400, fontWeight: FontWeight.bold),)),
                Expanded(
                  flex: 1,
                  child: Text('Geri Ödemeniz gerçekleşti.', style: Theme.of(context).textTheme.titleMedium,)),
                Expanded(
                  flex: 1,
                  child: Text('Teşekkür ederiz.', style: Theme.of(context).textTheme.titleMedium,)),
                const Spacer(flex: 2),
               Expanded(
                flex: 1,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple.shade800,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    child: const Text('Tamam'),)),
                 ),
               ),
               const Spacer(),
            ],
          ),
        ),
    );
  }
}