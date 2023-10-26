import 'package:firs_project/202/model_learn.dart';
import 'package:flutter/material.dart';
/*
class ModelLearnVieww extends StatelessWidget {
   ModelLearnVieww({super.key});
  
  final user1= PostModel();
  final user2=PostModel2(2, 3, 'a', 'b');
  final user3= PostModel3(2, 3, 'a', 'b');
  final user4=PostModel4(userId: 1, id: 2, title: 'title', body: 'body'); //Localde islem yapacaksam 4. 5. opsiyonlar kullanılabilir
  final user5=PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
  final user6=PostModel6(userId: 1, id: 2, title: 'title', body: 'body');
  final user7=PostModel7();
  final user8=PostModel8(title: 'Samet'); //Service kullanıyorsam en mantıklısı bu 


  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(title: Text(user8.body ?? 'Not has any response'),),

    );
  }
}

//Text String data alır fakat biz PostModel8'de nullable verdiğimizden ?? yapıp eger bu data gelmezse şunu yap anlamına gelen ?? işlemini kullanırız.
*/
class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});
 

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}


class _ModelLearnViewState extends State<ModelLearnView> {
   var user8=PostModel8(title: 'SAMET');
    // Datayı güncelleyebilmek için final user8 yapısını PostModel8(var da yapılabilir ben var yapmayı sectim) user8 yapısına döndürdüm çünkü final yapısı sonradan degisemez
  @override
  void initState() {
    super.initState();
 // final user1= PostModel1();
  //final user2=PostModel2(2, 3, 'a', 'b');
  //final user3= PostModel3(2, 3, 'a', 'b');
  //final user4=PostModel4(userId: 1, id: 2, title: 'title', body: 'body'); //Localde islem yapacaksam 4. 5. opsiyonlar kullanılabilir
  //final user5=PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
  //final user6=PostModel6(userId: 1, id: 2, title: 'title', body: 'body');
  //final user7=PostModel7();
  //final user8=PostModel8(title: 'sametttt'); //Service kullanıyorsam en mantıklısı bu 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          user8=PostModel8(title:'On pressed');
        });
      }),
          appBar: AppBar(title: Text(user8.title ?? 'Not has any response'),),

    );
  }
}
//Text String data alır fakat biz PostModel8'de nullable verdiğimizden ?? yapıp eger bu data gelmezse şunu yap anlamına gelen ?? işlemini kullanırız.
