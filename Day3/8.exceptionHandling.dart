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

void main() {   
   int a = 18;   
   int b = 0;   
   int res;    
     
   try {    
      res = a ~/ b;
      print("Result is $res");   
   }    
    // It returns the built-in exception related to the occurring exception  
   catch(ex) {   
      print(ex);   
    }   
}  