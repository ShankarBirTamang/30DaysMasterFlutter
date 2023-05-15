// palindrome : to check if the given string is a palindrome.
// A word ,phrases or sequence that reads the same backwards as forwards
import 'dart:io';
void main(){
  print("Enter a text : ");
  String? text = stdin.readLineSync(); // reading user input
  checkPalindrome(text.toString()); // calling function
}
void checkPalindrome(String str1){
String str2 = str1.split('').reversed.join(); //reversing string
String check = (str1==str2)?'$str1 is palindrome .': '$str1 is not palindrome.'; // ternary operator
print(check);
}