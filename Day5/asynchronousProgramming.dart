/*
Asynchronous programming in Dart allows you to execute code without blocking the main program flow. 
It allows you to perform time-consuming tasks like network requests, file I/O, or database operations in the background 
while the rest of your program keeps running. 
This helps to prevent your program from becoming unresponsive and improves its overall performance. 
Dart provides several mechanisms for asynchronous programming, including Futures, async/await, and Streams.


In Synchronous programming, the program is executed line by line, one at a time. 
Synchronous operation means a task that needs to be solved before proceeding to the next one.
Example :
void main() {
  print("First Operation"); 
  print("Second Big Operation"); 
  print("Third Operation"); 
  print("Last Operation"); 
}

In Asynchronous programming, program execution continues to the next line without waiting to complete other work. 
It simply means, Don’t wait. 
It represents the task that doesn’t need to solve before proceeding to the next one.

Example :
*/
// void main() {
//   print("First Operation");   
//   Future.delayed(Duration(seconds:3),()=>print('Second Big Operation'));
//   print("Third Operation"); 
//   print("Last Operation"); 
// }

// In dart, the Future represents a value or error that is not yet available. 
//It is used to represent a potential value, or error, that will be available at some time in the future.
//We can create a future by creating Future class.
//Eg :
// function that returns a future
// Future<String> getUserName() async {
//   return Future.delayed(Duration(seconds: 3), () => 'Jangbu');  //Here , the function will return Future<string> after 3 seconds
// }
// void main(){
//   print("Start");
//   getUserName().then((value) => print(value));
//   print("End");
// }




/// State of Future : 
/// 
/// Uncompleted : When you call an asynchronous function, it returns to an uncompleted future. 
/// It means the future is waiting for the function asynchronous operation to finish or to throw an error.
/// 
/// Completed :It can be completed with value or completed with error. 
/// Future<int> produces an int value, and Future<String> produces a String value. 
/// If the future doesn’t produce any value, then the type of future is Future<void>.




// void main() {
//   print("Start");
//   getData();
//   print("End");
// }

// void getData() async{
//   String data = await middleFunction();
//   print(data);
// }

// Future<String> middleFunction(){
//   return Future.delayed(Duration(seconds:5), ()=> "Hello");
// }

///async and await: 
///The async keyword is used to mark a function as asynchronous, allowing it to use the await keyword. 
///The await keyword is used to pause the execution of an async function until a Future completes, 
///and then retrieve the result.
///
///To define an Asynchronous function, add async before the function body.
///The await keyword work only in the async function.
///

// import 'dart:io';

// void main() async{
//   //Reading contents of file asynchronously
//   var inputfile = File('input.txt');
//   var contents = await inputfile.readAsString();
//   print(contents);

//   // Modify the contents
//   var modifiedContents = "Modified: $contents";

//   //Writing the modified contents to another file asynchronously
//   File outputFile = File('output.txt');
//   await outputFile.writeAsString(modifiedContents);
// }



///Project File Reader
///Write a program that reads a text file asynchronously and prints the content to the console.
/// At the same time as the file is being read, print a message to the console to indicate that the file is being read.
/// When the file has been read, print a message to the console to indicate that the file has been read.

// import 'dart:io';
// Future<void> readFile() async{
//   try {
//     //Read input file asynchronously
//     var file = File('example.txt');
//     var fileContents = await file.readAsString();
//     print(fileContents);
//     print("The file has been read.");
//   }catch(e){
//     print('Error:$e');
//   }
// }
// void main()=>readFile();


