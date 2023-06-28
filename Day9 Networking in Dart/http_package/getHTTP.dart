// import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async{
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  // final jsonData = jsonDecode(response.body);
  // print(jsonData);
  print(response.body);
}