/*
Dart has a special syntax for the function body, which is only one line. 
The arrow function is represented by => symbol. 
It is a shorthand syntax for any function that has only one expression.

Syntax :
returnType functionName(parameters...) => expression;
*/

//without Arrow function
// num calculateInterest(p,t,r){
//  interest = p*t*r/100 ;
//   return interest ;
// }

// with Arrow function
num calculateInterest(p,t,r)=> p*t*r/100;

void main(){
  num principal = 5000;
  num time = 3 ;
  num rate = 3 ;
  print("The calculated Simple interest : Rs.${calculateInterest(principal, time, rate)} ");
}