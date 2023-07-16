import 'package:flutter/material.dart';

class ListView1 extends StatefulWidget {
  const ListView1({ Key? key }) : super(key: key);

  @override
  _ListView1State createState() => _ListView1State();
}

class _ListView1State extends State<ListView1> {
        
final List<String> entries = <String>['A', 'B', 'C','D','E','F'];
final List<int> colorCodes = <int>[600, 500, 400,300,200,100];

@override
Widget build(BuildContext context) {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    
    scrollDirection: Axis.horizontal,
    itemCount: entries.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin : const EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration:  BoxDecoration(
        color: Colors.amber[colorCodes[index]],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text('Entry ${entries[index]}',
        style: const TextStyle(
          fontSize: 25
        ),
        )),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}
        
}
