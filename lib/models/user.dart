
import 'dart:convert';
import '../api/api.dart';


void main() async {

   LoginModel res = LoginModel.fromjson(await Api.post_login_data('a@a.com', "123456"));
   print( res.code);
  
}


class LoginModel{

 late var code;
 late var message;
 late var data ;

 LoginModel.fromjson(Map json){
  this.code = json['code'];
  this.message = json['message'];
  this.data = (json['data'] != null ? UserData.fromjson(json['data']) : null)!;

 }

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
     this.id = json['id'];
     this.first_name = json['first_name'];
     this.last_name = json['last_name'];
     this.name = json['name'];
     this.email = json['email'];
     this.image = json['image'];
     this.phone = json['phone'];
     this.active = json['active'];
     this.sms_code = json['sms_code'];
     this.date_of_birth = json['date_of_birth'];
     this.gender = json['gender'];
     this.access_token = json['access_token'];
 }

}