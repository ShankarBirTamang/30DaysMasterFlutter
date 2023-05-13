// In Programming, loops are used to repeat a block of code until certain conditions are not completed. 
//For, e.g., if you want to print your name 100 times, 
//then rather than typing print(“your name”); 100 times, you can use a loop.

// There are different types of loop in Dart. They are:

// For Loop
// For Each Loop
// While Loop
// Do While Loop

//1. For Loop
// Syntax :
// for(initialization; condition; increment/decrement){
//             statements;
// }
// void main() {
//   for (int i = 1; i <= 10; i++) {
//     print(i);
//   }
// }

// void main() {
//   for (int i = 10; i >= 1; i--) {
//     print(i);
//   }
// }

// //Sum of n natural numbers
// void main(){

//   int total = 0;
//   int n = 100; // change as per required
  
//   for(int i=1; i<=n; i++){
//     total = total + i;
//   }
  
//   print("Total is $total");
  
// }

//Display even no between 50 to 100
// void main(){
//   for(int i=50; i<=100; i++){
//     if(i%2 == 0){
//       print(i);
//     }
//   } 
// }



// //Infinite loop
// void main() {
//   for (int i = 1; i >= 1; i++) {
//     print(i);
//   }
// }

//2. For Each Loop
//The for each loop iterates over all list elements or variables. 
//It is useful when you want to loop through list/collection. 

//The syntax of for-each loop is: 
// collection.forEach(void f(value));

// This will print each name of football players.
// void main(){
//   List<String> footballplayers=['Ronaldo','Messi','Neymar','Hazard'];
//   footballplayers.forEach( (names)=>print(names));
// }

// Finding sum and average of a list of numbers
// void main(){
//   List<int> numbers = [1,2,3,4,5];
//   int total = 0;
//   numbers.forEach( (num)=>total= total+ num);
//   print("Total is $total.");
//   double avg = total / (numbers.length);
//   print("Average is $avg.");
// }

//For in Loop
// void main(){
//   List<String> week = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'];
//   for (String day in week){
//     print(day);
//   }
// }

// To find Index value of list
// void main(){
//   List<String> fruits = ['Apple','Orange','Banana','Mango','Watermelon'];
//   fruits.asMap().forEach((key, value) => print("$value index is $key"));
//   // int index = fruits.indexOf('Orange');
//   // print(index);
// }

//To print unicode value of each character of string
// void main() {
//   String name = 'jangbu';
//   for ( var codePoint in name.runes){
//     print("Unicode of ${String.fromCharCode(codePoint)} is $codePoint.");
//   }
// }


//While loop
// while(condition){  
//        //statement(s);  
//       // Increment (++) or Decrement (--) Operation;  
// }  
// void main() {
//   int i = 1;
//   while (i <= 10) {
//     print(i);
//     i++;
//   }
// }
// void main() {
//   int i = 10;
//   while (i >= 1) {
//     print(i);
//     i--;
//   }
// }

// void main(){

//   int total = 0;
//   int n = 100; // change as per required
//   int i =1;

//   while(i<=n){
//     total = total + i;
//     i++;
//   }
  
//   print("Total is $total");
  
// }

// Do while loop


// do{
//     statement1;
//     statement2;
//     .
//     .
//     .
//     statementN;
// }while(condition);

// void main() {
//   int i = 1;
//   do {
//     print(i);
//     i++;
//   } while (i <= 10);
// }


// void main(){

//   int total = 0;
//   int n = 100; // change as per required
//   int i =1;
  
//   do{
//   total = total + i;
//     i++;
//   }while(i<=n);
  
//   print("Total is $total");
  
// }


