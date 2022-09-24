import 'package:untitled3/models/user_model.dart';
//1

class LoginModel{

  late var code;
  late var message;
  late var data ;

  LoginModel.fromjson(Map json){
    code = json['code'];
    message = json['message'];
    data = (json['data'] != null ? UserData.fromjson(json['data']) : null)!;

  }

}