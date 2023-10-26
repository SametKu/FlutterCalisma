import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  GlobalKey<FormState> _key= GlobalKey(); 

  bool _checkBoxControl=true;
  bool _isVisible=true;

  void controlCheckBox(){
    setState(() {
      _checkBoxControl=!_checkBoxControl;
    });
  }

  void visibleCheck(){
    setState(() {
      _isVisible=!_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(),
      body:    Center(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: _key,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                   _carIcon(),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 2),
                                     child: Text('Ngatur', style: Theme.of(context).textTheme.titleMedium?.copyWith(color:const Color.fromARGB(255, 207, 72, 231), fontWeight: FontWeight.bold,)),
                                   )
                            ],
                          ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, bottom: 10),
                              child: Text('Login to your account', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black),),
                            ),
                            Text('Please login to continue using Ngatur', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey,),),
                             const Padding(
                               padding:  EdgeInsets.only(top: 40,),
                               child: _EmailTexTField(),
                             ),
                              Padding(
                                padding: const EdgeInsets.only(top:15,bottom:15),
                                child: TextFormField(
                                
                                style: const TextStyle(color: Colors.black),
                                obscureText: _isVisible,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: 
                                InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(15), borderSide: const BorderSide(color: Colors.purple,), ),
                                labelText: 'Password', labelStyle: const TextStyle(color: Colors.purple),
                                suffix:  InkWell( onTap: () {visibleCheck();}, child:  Icon(_isVisible ? Icons.visibility : Icons.visibility_off, color: Colors.grey,)), ),
                                
                                validator: (value) {
                                  return (value?.isNotEmpty ?? false) ? null : 'Bos gecilemez';
                                },),
                              ),
          
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Row(
                                  children: [
                                    InkWell
                                    (
                                    onTap: (){controlCheckBox();}, 
                                    child: _checkBoxControl ? const Icon(Icons.check_box_outline_blank,color: Colors.purple, ) : const Icon(Icons.check_box, color: Colors.blue,)),
                                     Text('Remember me', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.black),),
                                  ],
                                ),
                                 InkWell(
                                  onTap: () {},
                                  child: Text('Forgot Password?', style:Theme.of(context).textTheme.titleSmall?.copyWith(color:const Color.fromARGB(255, 207, 72, 231), ),))
                              ],),
                              Padding(
                                padding: const EdgeInsets.only(top: 30, bottom:40),
                                child: SizedBox(
                                  height: 40,
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style:ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(255, 207, 72, 231),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                    onPressed: (){}, 
                                    child: const Text('Sign in'))),
                              ),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Text('Do not have an account?',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.grey,),),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 5),
                                       child: InkWell(
                                        onTap: (){},
                                        child: Text('Sign up',style:Theme.of(context).textTheme.titleSmall?.copyWith(color:const Color.fromARGB(255, 207, 72, 231),))),
                                     )
                                  ],
                                )
                           ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _carIcon() {
    return const Padding(
                                   padding:  EdgeInsets.only(right: 2),
                                   child: Icon(Icons.car_crash_outlined, color:  Color.fromARGB(255, 207, 72, 231),),
                                 );
  }
}

class _EmailTexTField extends StatelessWidget {
  const _EmailTexTField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     style: const TextStyle(color: Colors.black),
     decoration: InputDecoration(
     enabledBorder: OutlineInputBorder(
     borderRadius:BorderRadius.circular(15), borderSide: const BorderSide(color: Colors.purple,), ), 
     labelText: 'Email',
     labelStyle: const TextStyle(color: Colors.purple)),
     validator: (value) {
       return (value?.isNotEmpty ?? false) ? null : 'Bos gecilemez';
     },);
  }
}