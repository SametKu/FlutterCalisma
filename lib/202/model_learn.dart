class PostModel1{
   int? userId;
   int? id;
   String? title;
   String? body;
}

class PostModel2{
    int userId;
    int id;
    String title;
    String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3{
    final int userId;
    final int id;
    final String title;
    final String body;

  PostModel3(this.userId, this.id, this.title,  this.body);

}

class PostModel4{
    final int userId;
    final int id;
    final String title;
    final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

class PostModel5{ //reisin en cok önerdiklerinden**
    final int _userId;
    final int _id;
    final String _title;
    final String _body;

    int get userId => _userId;
    int get id => _id;
    String get title => _title;
    String get body => _body; // adamın daha sonrasında degistirmesine olanak sağlamak istiyorsak

  PostModel5({
  
  required int userId, 
  required int id, 
  required String title, 
  required String body}): 
  
  _userId=userId, 
   _id=id, 
   _title=title,
   _body=body;

}

class PostModel6{ //reisin en cok önerdiklerinden** Model 5 ile hiçbir farkı yok
    late final int _userId;
    late final int _id;
    late final String _title;
    late final String _body;


     int get userId => _userId;
    int get id => _id;
    String get title => _title;
    String get body => _body;

  PostModel6({
  
  required int userId, 
  required int id, 
  required String title, 
  required String body}){

    _userId=id;
    _id=id;
    _title=title;
    _body=body;
  }}

class PostModel7{ 
    late final int _userId;
    late final int _id;
    late final String _title;
    late final String _body;

    int get userId => _userId;
    int get id => _id;
    String get title => _title;
    String get body => _body;

  PostModel7({
  
   int userId=0, 
   int id=0, 
   String title='', 
   String body=''
   }){

    _userId=id;
    _id=id;
    _title=title;
    _body=body;
  }}

class PostModel8{ //mobil projelerde en çok kullanılan model yöntemi budur.
     final int? userId;
     final int? id;
     final String? title;
     final String? body;

  PostModel8({this.userId, this.id, this.title, this.body});

 }

//Service kullanıyorsam en mantıklısı bu 8.
//Localde islem yapacaksam 4. 5. opsiyonlar kullanılabilir(Local= text field, page view falan vs.)