import 'dart:convert';

import 'package:http/http.dart' as http;

class API {
  // if u run with emulator you'll use 10.0.2.2 rather than localhost
  //static const String Base_url ='http://localhost:8000';
  static Future createauthor(String name) async {
    // business logic to send data server
    var res = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/comments?postId=1"),
        body: jsonEncode(<String, String>{
          "name": name,
        }),
        headers: <String, String>{'content-type': 'app/json; charset=utf-8'});
    if (res.statusCode == 200) {
      print(res.body);
    } else {
      print('error');
    }
    return res;
  }
}
