///While coding, it is hard to find errors in big projects, so dart provide a assert method to check for the error. 
///It takes conditions as an argument. If the condition is true, nothing happens. 
///If a condition is false, it will raise an error.

// Syntax:
// assert(condition);
// // or 
// assert(condition, "Your custom message");

// void main() { 
//    var age = 22;
//    assert(age!=22);
// }

// void main() { 
//    var age = 22;
//    assert(age!=22, "Age must be 22");
// }

//You can use this command below if you are running a dart file from the computer.
//dart --enable-asserts file_name.dart