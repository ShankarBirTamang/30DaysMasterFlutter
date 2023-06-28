import 'dart:io';
import 'package:http/http.dart' as http ;

void main() async{
  var url = "https://yt3.googleusercontent.com/ytc/AGIKgqOlaFkn6Ug4Wt1G4Nif7v_cyGeESQqeO_6KknN3vQ=s900-c-k-c0x00ffffff-no-rj";
  var response = await http.readBytes(Uri.parse(url));
  var filePath = "image/img.jpeg" ;
  await File(filePath).writeAsBytes(response);
  print("Image Downloaded to file : $filePath ");

}