
import 'dart:convert';

void main() {
  String jsonData = '{"name": "Sankar","age": 27}';
  Map<String,dynamic> data = jsonDecode(jsonData);
  print(data['name']);
}