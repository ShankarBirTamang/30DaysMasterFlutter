// 1. Write a program in Dart to print your own name using function.

// printName(name)=>print("My name is $name."); //arrow function
// void main(){
//   var myName = "Sankar Bir Tamang";
//   printName(myName);
// }




// 2. Write a program in Dart to print even numbers between intervals using function

//  evenNumbers(min , max){
//     for(int i=min; i<=max ;i++){
//       if(i%2==0){
//         print(i);
//       }
//     }
// }
// void main(){
//   num min=10 ;
//   num max = 40 ;
//   evenNumbers(min,max);
// }




// 3. Write a program in Dart that generates random password.

// import 'dart:math';

// String generatePassword(int length){
//     const String charSet='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_+-=';
//     final Random rand = new Random();
//     String passWord = '';

//     for(int i=0;i<length;i++){
//       passWord += charSet[rand.nextInt(charSet.length)];
//     }
//     return passWord;
// }
// void main(){
//   int length = 10;
//   String pwd = generatePassword(length);
//   print("Random Password: $pwd");
// }




// 4. Write a program in Dart that find the area of a circle using function.
// const double pi = 22/7;
// double circleArea(radius)=> pi * radius * radius ; //arrow function

// void main(){
//   int radius = 5 ;
//   print("The area of circle with radius $radius cm is ${circleArea(radius)} cm.");
// }



// 5. Write a program in a dart that implements the Pythagorean theorem using function.

// import 'dart:math';
// double calculateHypothenuse(p,b)=> sqrt(pow(p, 2)+pow(b, 2));

// void main(){
//   double sideA = 3;
//   double sideB = 4;
//   print("The length of hypothenuse is : ${calculateHypothenuse(sideA, sideB)}");
// }




//6. Write a program in Dart to reverse a String using function.

// import 'dart:io';
// String reverseString(String str)=>str.split('').reversed.join(); //arrow function
// void main(){
//   print("Enter a string : ");
//   String? str = stdin.readLineSync();
//   print("The reverse of given string is : ${reverseString(str.toString())}");
// }




//7. Write a program in Dart to calculate power of a certain number. For e.g 5^3=125

// import 'dart:io';
// import 'dart:math';
// void main(){
//   print("Enter a number : ");
//   int? number = int.parse(stdin.readLineSync()!);
//   print("Enter its exponent value : ");
//   int? exp = int.parse(stdin.readLineSync()!);
  
//   num result = pow(number, exp);
//   print("The result is : $result "); 
// }
