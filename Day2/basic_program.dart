// source : https://dart-tutorial.com/introduction-and-basics/

// void main(){
//   var fName= "Sankar";
//   var mName= " Bir" ;
//   var lName= "Tamang ";
//   print("Full name is $fName $mName $lName");
// }

// 
//  void main() {
// // Multi Line Using Single Quotes   
// String multiLineText = '''
// This is Multi Line Text
// with 3 single quote
// I am also writing here.
// ''';
   
// // Multi Line Using Double Quotes   
// String otherMultiLineText = """
// This is Multi Line Text
// with 3 double quote
// I am also writing here.
// """;
   
// // Printing Information   
// print("Multiline text is $multiLineText");
// print("Other multiline text is $otherMultiLineText");
// }



//  void main() {
// // Using \n and \t   
// print("I am from \nUS.");
// print("I am from \tUS.");
// }

//  void main() {
// // Set prize value
// num prize = 10;
// String withoutRawString = "The value of prize is \t $prize"; // regular String
// String withRawString =r"The value of prize is \t $prize"; // raw String

// print("Without Raw: $withoutRawString"); // regular result
// print("With Raw: $withRawString"); // with raw result

// }

// // Convert String to int and double using parse() method
// void main(){
//   String strValue = "5";
//   String strValue2 = "5.5";
//   print("Type of strValue is ${strValue.runtimeType}");
//   print("Type of strValue2 is ${strValue2.runtimeType}");

//   int intValue = int.parse(strValue);
//   double doubleValue = double.parse(strValue2);

//   print("Value of intValue is $intValue");
//   print("Value of doubleValue is $doubleValue");
//   print("Type of intValue is ${intValue.runtimeType}");
//   print("Type of dobuleValue is ${doubleValue.runtimeType}");
// }

// // Convert Int to String
// void main (){
//   int one = 1 ;
//   print ("Type of one is ${one.runtimeType}");
//   String oneInString = one.toString();
//   print ("Value of oneInString is $oneInString");
//   print("Type of oneInString is ${oneInString.runtimeType}");
// }

// void main() { 
//    double num1 = 10.01;
//    int num2 = num1.toInt(); // converting double to int

//   print("The value of num1 is $num1. Its type is ${num1.runtimeType}");
//   print("The value of num2 is $num2. Its type is ${num2.runtimeType}");
// }

// void main() {
// List<String> names = ["Sankar", "Ram", "Hari"];
// print("Value of names is $names");
// print("Value of names[0] is ${names[0]}"); // index 0
// print("Value of names[1] is ${names[1]}"); // index 1
// print("Value of names[2] is ${names[2]}"); // index 2

//   // Finding Length of List 
// int length = names.length;  
// print("The Length of names is $length");
// }

// void main() {
// Set<String> weekday = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
// print(weekday);
// }

// void main() {
// Map<String, String> myDetails = {
//    'name': 'Jangbu',
//    'address': 'Nepal',
//    'fathername': 'Bir bahadur'
// };
// print (myDetails);
// print(myDetails['name']);
// }


//var automatically finds a data type. 
//In simple terms, var says if you don’t want to specify a data type, I will find a data type for you.
// void main(){
// var name = "John Doe"; // String
// var age = 20; // int

// print(name);
// print(age);
// }

//With runes, you can find Unicode values of String. 
// //The Unicode value of a is 97, so runes give 97 as output.
// void main() {
// String value = "a";
// print(value.runes);
// }



// ++var increases the value of operands, 
//whereas var++ returns the actual value of operands before the increment.


// void main() {
// // declaring two numbers 
//  int num1=0;
//  int num2=0;
 
// // performing increment / decrement operator  

// // pre increment   
// num2 = ++num1;
// print("The value of num2 is $num2");

// // reset value to 0 
// num1 = 0;
// num2 = 0;

// // post increment  
// num2 =  num1++;
// print("The value of num2 is $num2");  
  
// }


// Test operator
// void main() {
//   String value1 = "Dart Tutorial";
//   int age = 10;
  
//   print(value1 is String);
//   print(age is !int);
// }

import 'dart:io';
 
void main(){
  print("Enter Name : ");
  String? name = stdin.readLineSync();
  print("Enter Number : ");
  int? number = int.parse(stdin.readLineSync()!);

  print("The entered name is $name and number is $number");
 }