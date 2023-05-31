///Dart Asynchronous Programming Practice Questions
/* 
Explain what is asynchronous programming in dart?
--> Asynchronous programming refers to the programming model that allows us to perform non-blocking operation such as fetching data
from the network, reading from a file , or waiting for user input , without blocking the execution of our program . Instead of waiting 
for a task to complete before moving on to the next one , Dart allows us to initiate an asynchronous operation and continue executing other
tasks while waiting for the result . 


What is Future in dart?
=> In dart , Future represents a value or error that is not yet available . It represents a computation that may complete in future and return a
value. We can create a future by creating Future class. 
      A Future can have two possible states: it can be either incomplete or completed. 
When a Future is incomplete, it means that the associated computation is still ongoing or hasn't started yet. 
Once the computation is finished, the Future becomes completed, and it can either succeed with a value or fail with an error.
*/

// Write a program to print current time after 2 seconds using Future.delayed().
// void main() async{
//   Future.delayed(Duration(seconds: 2),(){
//       DateTime currentTime = DateTime.now();
//       print("Current Time after 2 seconds : $currentTime");
//   });
//   print("Current Time: ${DateTime.now()}");
//   print("Waiting for 2 seconds...");
// }

// Write a program in dart that reads csv file and print it’s content.
// import 'dart:io';
// void main() async{
//     var csvFile = File('input.txt');    //reading file
//     var contents = await csvFile.readAsString();
//     print(contents);
// }

// Write a program in dart that uses Future class to perform multiple asynchronous operations, wait for all of them to complete, 
// and then print the results.
// Future<String> getAsyncData(String operation,Duration delay){
//       return Future.delayed(delay,()=>"Result of $operation.");
// }

// void main() async{
//   List<Future<String>> asyncOperation=[
//     getAsyncData("Operation1", Duration(seconds: 2)),
//     getAsyncData("Operation2", Duration(seconds: 2)),
//     getAsyncData("Operation3", Duration(seconds: 2)),
//   ];
//   print("Performing asynchronous operations...");
//   Future.wait(asyncOperation).
//     then((value) {
//       print("All operations completed.");
//       print("Results: $value");
//     }).catchError((error){
//         print("Error occured: $error");
//     });
    
// }

// Write a Dart program to calculate the sum of two numbers using async/await.
// Future<int> calculateSum(a,b) async{
//   await Future.delayed(Duration(seconds: 3));
//   return a+b ;
// }
// void main() async{
//   print("Performing calculation.");
//   int result = await calculateSum(5, 4);
//   print("The sum is : $result");
// }

// Write a Dart program that takes in two integers as input, waits for 3 seconds, and then prints the sum of the two numbers.
// import 'dart:io';
// void main() async{
//   print("Enter a no: ");
//   int? n1= int.parse(stdin.readLineSync()!);
//   print("Enter another number: ");
//   int? n2= int.parse(stdin.readLineSync()!);
//   print("Calculating sum...");
//   await Future.delayed(Duration(seconds:3 ),()=>print("Sum of two no : ${n1+n2}"));
// }

// Write a Dart program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.
// Future<List<String>> sortList(List<String> myList) async{
//   await Future.delayed(Duration(seconds: 3)); //simulating an asynchronous 
//   // myList.sort((a, b) => a.length.compareTo(b.length));
//   myList.sort();
//   return myList;
// }main() async{
//   List<String> fruitList = ['banana' , 'apple', 'mango' , 'orange' , 'watermelon' , 'coconut'];
//   print("Sorting list...");
//   List<String> sortedList = await sortList(fruitList);
//   print("Sorted fruit List: ");
//   sortedList.forEach((element) {
//     print(element);
//   });
//   print("program continues...");
// }


// Write a Dart program that takes a list of integers as input, multiplies each integer by 2 asynchronously, and then prints the modified list.
// Future<List<int>> multiplyList(List<int> myList) async{
//     await Future.delayed(Duration(seconds: 2));  //simulating an asynchronous operation
//     List<int> modifiedList = [];
//     for(int i in myList){
//       modifiedList.add(i*2);
//     }
//     return modifiedList;
// } main() async{
//   List<int> intList = [1,3,5,6,8];
//   print("Modifying List ...");
//   List<int> modifiedList = await multiplyList(intList);
//   print("Modified list: ");
//   modifiedList.forEach((element) {
//     print(element);
//   });
// }


// Write a Dart program that takes a string as input, reverses the string asynchronously, and then prints the reversed string.
import 'dart:io';
Future<String> reverseString(String str) async{
  await Future.delayed(Duration(seconds: 3));
  String revString = str.split('').reversed.join();
  return revString;
} main() async{
  print("Enter any string : ");
  String? str = stdin.readLineSync();
  print("Reversing string...");
  String revString = await reverseString(str.toString());
  print("The reversed string is : $revString");
}