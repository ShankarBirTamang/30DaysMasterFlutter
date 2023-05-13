// Syntax
//1. IF condition
// if(condition) {
//     Statement 1;
//     Statement 2;
//        .
//        .
//     Statement n;
// }

// void main()
// {
//     var age = 20;
    
//     if(age >= 18){
//       print("You are voter.");
//     }
// }


//2.If Else Conditon
// if(condition){
// statements;
// }else{
// statements;
// }
  // void main()
  // {
  //       int age = 12;
  //       if(age >= 18){
  //           print("You are voter.");
  //       }else{
  //           print("You are not voter.");
  //       }
  // }


//3. Condition based on Boolean Value
  // void main()
  // {
  //       bool isMarried = false;
  //       if(isMarried){
  //           print("You are married.");
  //       }else{
  //           print("You are single.");
  //       }
  // }


  //4. If-Else-If Condition
//   if(condition1){
// statements1;
// }else if(condition2){
// statements2;
// }else if(condition3){
// statements3;
// }
// .
// .
// .
// else(conditionN){
// statementsN;
// }

// import 'dart:io';
// void main() {
//   // int noOfMonth = 5;
//   print("Enter a no of month : ");
//   int? noOfMonth = int.parse(stdin.readLineSync()!);

//   // Check the no of month
//   if (noOfMonth == 1) {
//     print("The month is jan");
//   } else if (noOfMonth == 2) {
//     print("The month is feb");
//   } else if (noOfMonth == 3) {
//     print("The month is march");
//   } else if (noOfMonth == 4) {
//     print("The month is april");
//   } else if (noOfMonth == 5) {
//     print("The month is may");
//   } else if (noOfMonth == 6) {
//     print("The month is june");
//   } else if (noOfMonth == 7) {
//     print("The month is july");
//   } else if (noOfMonth == 8) {
//     print("The month is aug");
//   } else if (noOfMonth == 9) {
//     print("The month is sep");
//   } else if (noOfMonth == 10) {
//     print("The month is oct");
//   } else if (noOfMonth == 11) {
//     print("The month is nov");
//   } else if (noOfMonth == 12) {
//     print("The month is dec");
//   } else {
//     print("Invalid option given.");
//   }
// }

// Program to find greatest no among three
// void main()
// {
//         int num1 = 1200;
//         int num2 = 1000;
//         int num3 = 150;

//         if(num1 > num2  && num1 > num3){
//             print("Num 1 is greater: i.e $num1");
//         }
//         if(num2 > num1 && num2 > num3){
//            print("Num2 is greater: i.e $num2");
//         }
//         if(num3 > num1 && num3 > num2){
//             print("Num3 is greater: i.e $num3");
//         }
//     }