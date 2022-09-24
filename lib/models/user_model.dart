
import 'dart:convert';
import '../api/api.dart';
import 'login_model.dart';


void main() async {

   LoginModel res = LoginModel.fromjson(await Api.post_login_data('a@a.com', "123456"));
   print( res.code);
  
}

class UserData {

     late  var id ;
     late var first_name ;
     late var last_name ;
     late var name ;
     late var email ;
     late var image ;
     late var phone ;
     late var active ;
     late var sms_code ;
     late var date_of_birth ;
     late var gender ;
     late var access_token ;

 UserData.fromjson(Map json){
     id = json['id'];
     first_name = json['first_name'];
     last_name = json['last_name'];
     name = json['name'];
     email = json['email'];
     image = json['image'];
     phone = json['phone'];
     active = json['active'];
     sms_code = json['sms_code'];
     date_of_birth = json['date_of_birth'];
     gender = json['gender'];
     access_token = json['access_token'];
 }

}