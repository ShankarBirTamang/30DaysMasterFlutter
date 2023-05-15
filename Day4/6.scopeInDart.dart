/*
The scope is a concept that refers to where values can be accessed or referenced. 
Dart uses curly braces {} to determine the scope of variables. 
If you define a variable inside curly braces, you can’t use it outside the curly braces.

Local scope : variable inside the method can only be used by that method
Global scope : variable outside the method can be used by all other method

LEXICAL SCOPE
In Dart, lexical scope refers to the scope or visibility of variables, functions, and classes within the source code 
based on their physical location or position. 
Lexical scope is determined at the time of compilation and is defined by the structure of the code.

In Dart, each block of code delimited by curly braces {} establishes a new lexical scope. 
Variables, functions, and classes defined within a particular scope are accessible within that scope 
and any nested scopes, but not outside of it.

Here's an example to illustrate lexical scope in Dart:
// */
// void main() {
//   int x = 10; // Variable x is defined in the main() scope

//   if (x > 5) {
//     int y = 20; // Variable y is defined in the if block scope
//     print(x); // Accessible: x is defined in the outer scope
//     print(y); // Accessible: y is defined in the current scope
//   }

//   // print(y); // Not accessible: y is not defined in this scope
// }

bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}