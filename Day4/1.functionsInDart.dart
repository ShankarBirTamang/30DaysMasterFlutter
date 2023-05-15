//  Functions are the block of code that performs a specific task. 
//They are created when some statements are repeatedly occurring in the program. 
//The function helps reusability of the code in the program.
/*
Advantages :
Avoid Code Repetition
Easy to divide the complex program into smaller parts
Helps to write a clean code

Syntax :
returntype functionName(parameter1,parameter2, ...){
  // function body
}
*/

// writing function outside main function.
// void printName(){
//   print("My name is Sankar. I am from function.");
// }
// // this is our main function.
// void main(){
//   printName();
// }

// Here num1 and num2 are parameters
void add(int num1, int num2){
  int sum;
  sum = num1 + num2;
   
  print("The sum is $sum");
}

void main(){
// Here 10 and 20 are arguments
  add(10, 20);
}