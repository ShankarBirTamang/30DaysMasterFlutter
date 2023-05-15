// An exception is an error that occurs at runtime during program execution. When the exception occurs, 
//the flow of the program is interrupted, and the program terminates abnormally. 
//There is a high chance of crashing or terminating the program when an exception occurs. 
//Therefore, to save your program from crashing, you need to catch the exception

// try {
// // Your Code Here
//   }
// catch(ex){
// // Exception here
// }

// void main() {   
//    int a = 18;   
//    int b = 0;   
//    int res;    
     
//    try {    
//       res = a ~/ b;
//       print("Result is $res");   
//    }    
//     // It returns the built-in exception related to the occurring exception  
//    catch(ex) {   
//       print(ex);   
//     }   
// }  


//Finally in Dart Try Catch
// The finally block is always executed whether the exceptions occur or not. 
//It is optional to include the final block, 
//but if it is included, it should be after the try and catch block is over.

/*
Syntax :
try {
  .....
}
on Exception1 {
  ....
}
catch Exception2 {
  ....
}
finally {
  // code that should always execute whether an exception or not.
}
*/

// void main() {
//   int a = 12;
//   int b = 0;
//   int res;
//   try {
//     res = a ~/ b;
//   } on UnsupportedError {
//     print('Cannot divide by zero');
//   } catch (ex) {
//     print(ex);
//   } finally {
//     print('Finally block always executed');
//   }
// }


//Throwing an Exception
// The throw keyword is used to raise an exception explicitly. 
//A raised exception should be handled to prevent the program from exiting unexpectedly.
//Syntax :
//throw new Exception_name() 

// void main(){
//   try{
//   check_account(-10); 
//   }catch(e){
//     print('The account cannot be negative');
//   }
// }

// void check_account(int amt){
//   if(amt<0){
//     throw new FormatException(); //Raising explanation externally
//   }
// }

//Exceptions provide the means to separate the details of what to 
//do when something out of the ordinary happens from the main logic of 
// a program.

/* Reasons why exception handling are necessary :
To avoid abnormal termination of the program
To avoid an exception caused by logical error.
To avoid the program from falling apart when an exception occurs.
To reduce the vulnerability of the program. 
To maintain a good user experience.
To try providing aid and some debugging in case of an exception.
*/

//Custom Exception
/*
Syntax : 
class MyExceptionClass implements Exception{
  // constructors , variables and methods
}

*/

// class MyExceptionClass implements Exception{
//   String errorMessage(){
//     return 'Marks cannot be negative value.';
//   }
// }
// void main(){
//   try{
//     checkMarks(-20);
//   }catch(ex){
//     print(ex.toString());
//   }
// }

// void checkMarks(int marks){
//   if(marks <0) throw MyExceptionClass().errorMessage();
// }

// Program that throws an exception when it find the square root of a negative number.
import 'dart:math';

// custom exception class
class NegativeSquareRootException implements Exception {
  @override
  String toString() {
    return 'Sqauare root of negative number is not allowed here.';
  }
}

// get square root of a positive number
num squareRoot(int i) {
  if (i < 0) {
    // throw `NegativeSquareRootException` exception
    throw NegativeSquareRootException();
  } else {
    return sqrt(i);
  }
}

void main() {
  try {
    var result = squareRoot(-4);

    print("result: $result");
  } on NegativeSquareRootException catch (e) {
    print("Oops, Negative Number: $e");
  } catch (e) {
    print(e);
  } finally {
    print('Job Completed!');
  }
}

