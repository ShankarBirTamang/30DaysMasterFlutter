import 'package:http/http.dart' as http;

void main() async{
 
try {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  var response = await http.post(url, body: {'title':"title section",'body':"Body section",'userId':1});
  
  if(response.statusCode == 200){
    print("Post request Successful. Response : ${response.body}");
  }else {
    print("Post request failed . Status Code : ${response.statusCode}");
  }
} on Exception catch (e) {
    print("An error occured : $e")  ;
}  
}