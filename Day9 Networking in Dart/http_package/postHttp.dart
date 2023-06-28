import 'package:http/http.dart' as http;
void main() async{
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var response = await http.post(url,body: {'title':'anything','body':'post Body','userId':'1'});
  print(response.body);
}