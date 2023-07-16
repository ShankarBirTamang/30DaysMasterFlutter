import 'package:flutter/material.dart';

import 'home.dart';
import 'list_view.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Search Demo',
      home: ListView1(),
      // home: Home() ,
      
      debugShowCheckedModeBanner: false,
    );
  }
}