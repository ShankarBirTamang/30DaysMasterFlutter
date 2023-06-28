import 'dart:async';

import 'package:http/http.dart'as http;
import 'dart:convert';

class Post{
  int? id;
  String? title;
  String? body;

  Post({this.id, this.title, this.body}); //constructor

  factory Post.fromJson(Map<String,dynamic> json)=> Post(id:json['id'],title:json['title'],body: json['body']);
}

void main()async{ 
  var jsonData = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  // String jsonData = '{"id": 1,"title":"title section","body":"body section"}';
  Map<String,dynamic> data = jsonDecode(jsonData.body);
  Post post = Post.fromJson(data);
  print(post.body);
}