import 'dart:convert';
import 'package:http/http.dart' as http;

void fetchData() async{
  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if(response.statusCode == 200){
    var jsonResponse = jsonDecode(response.body);
    print("Number of posts: ${jsonResponse.length}");
  }
  else {
    print("Request failed with status : ${response.statusCode}");
  }
} main()=>fetchData();