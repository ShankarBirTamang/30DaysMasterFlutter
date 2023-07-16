import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController searchController =  TextEditingController();
  List<String> navBarItem = ['Health','Finance','Smart Phones','Sport','Politics','Animals','Vehicles'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Our News"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container( 
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:const Color.fromARGB(31, 226, 172, 172),               
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        // print("Tap");
                        if((searchController.text).replaceAll(" ", "")==""){
                          // ignore: avoid_print
                          print("Blank Search");
                        }else {
                          //Navigator.push(context, MaterialPageRoute(builder:___));
                        }

                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(3, 0  , 7, 0),
                        child: const Icon(Icons.search,color: Colors.blueAccent,) ,
                        ),
                    ),                 
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value){
                          // ignore: avoid_print
                          print(value);
                        },
                        decoration: const InputDecoration(
                          hintText: "Search name...",
                          border: InputBorder.none
                        ),
                      ) 
                    )
                  ],
                ),
              ),
          Container(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: navBarItem.length,
              itemBuilder: ((context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.blueAccent ,
                  borderRadius: BorderRadius.circular(20),

                ),
               
                child: Center(
                  child: Text(navBarItem[index],
                    style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white ,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              );
            })),
          )
        ]),
      
    );
  }
}