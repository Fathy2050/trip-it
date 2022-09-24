import 'dart:convert';

import 'package:http/http.dart' as http;

void main()async{
   print(await Api.post_signup_data('', "",'a@a.com','','',''));
}

class Api {
  
  static post_login_data(email, password) async{

    var data = {
      "email": email,
      "password": password,
    };

    var url = Uri.parse('http://alcaptin.com/api/login');
    var res = await http.post(url,body: data).then((response) => jsonDecode(response.body)) ;
    return res;
  }


  static post_signup_data( first_name ,last_name, email, password ,age, gender ) async{

    var data = {
      "first_name": first_name,
      "last_name": last_name,
      "email": email,
      "password": password,
      "age": age,
      "gender": gender

    };

    var url = Uri.parse('http://alcaptin.com/api/register');
    var res = await http.post(url,body: data).then((response) => jsonDecode(response.body)) ;
    return res;
  }

}