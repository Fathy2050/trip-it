import 'package:http/http.dart' as http;

class Api {

  static login(Map data) async{

    var url = Uri.parse('http://alcaptin.com/api/login');
    var res = await http.post(url,body: data) ;
    return res;

  }

}