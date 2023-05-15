/*
Functions are the block of code that performs a specific task. 
Here are different types of functions:

1.No Parameter And No Return Type
2.Parameter And No Return Type
3.No Parameter And Return Type
4.Parameter And Return Type
*/

//1. No parameter and No Return Type
// void main() {
//   printName();
// }

// void printName() {
//   print("My name is Sankar.");
// }

//2.Parameter and No Return Type
// void main() {
//   printName("Sankar");
// }
// void printName(String name) {
//   print("Welcome, ${name}.");
// }

//3. No Parameter and Return Type
// Function With No Parameter & Return Type
// void main() {
//   int personAge = 17;

//   if (personAge >= voterAge()) {
//     print("You can vote.");
//   } else {
//     print("Sorry, you can't vote.");
//   }
// }

// int voterAge() {
//   return 18;
// }

//4. Parameter and Return Type
// this function add two numbers
// int add(int a, int b) {
//   int sum = a + b;
//   return sum;
// }

// void main() {
//   int num1 = 10;
//   int num2 = 20;

//   int total = add(num1, num2);
//   print("The sum is $total.");
// }


//Example
// parameter and return type
int add(int a, int b) {
  var total;
  total = a + b;
  return total;
}

// parameter and no return type
void mul(int a, int b) {
  var total;
  total = a * b;
  print("Multiplication is : $total");
}

// no parameter and return type
String greet() {
  String greet = "Welcome";
  return greet;
}

// no parameter and no return type
void greetings() {
  print("Hello World!!!");
}

void main() {
  var total = add(2, 3);
  print("Total sum: $total");
  mul(2, 3);
  var greeting = greet();
  print("Greeting: $greeting");
  greetings();
}