///String helps you to store text based data. 
///In String, you can represent your name, address, or complete book. It holds a series or sequence of characters – letters, numbers, and special characters. 
///You can use single or double, or triple quotes to represent String.

// void main() {   
//    String text1 = 'This is an example of a single-line string.';   
//    String text2 = "This is an example of a single line string using double quotes.";   
//    String text3 = """This is a multiline line   
// string using the triple-quotes.
// This is tutorial on dart strings.
// """;   
//    print(text1);  
//    print(text2);   
//    print(text3);   
// }

// String Concatenation
// You can combine one String with another string. 
//This is called concatenation. 
//In Dart, you can use the + operator or use interpolation to concatenate the String.
// Interpolation makes it easy to read and understand the code.

// void main() {   
// String firstName = "Sank";
// String lastName = "Tamang";
// print("Using +, Full Name is "+firstName + " " + lastName+".");
// print("Using interpolation, full name is $firstName $lastName.");  
  
// }


///Properties of String
// void main(){
//   String str = "Hello";
//   print(str.codeUnits); //Returns an unmodifiable list of the UTF-16 code units of this string.
//   print(str.isEmpty);//Return true if this string is Empty
//   print(str.isNotEmpty); //Returns false if this string is Empty
//   print("Length of string : ${str.length}"); //Returns the length of the string including space, tab, and newline characters.
// }


///Methods of string
// void main(){
//   String str = "   Kath Mandu   ";
//   String str2 = " Dharan";
//   print(str.toLowerCase());
//   print(str.toUpperCase());
//   print(str.trim());
//   print(str.trimLeft());
//   print(str.trimRight());
//   print(str.compareTo(str2));
//   print(str2.compareTo(str));
// }

//Replace string 
//Example of replaceAll()
// void main() { 
// String text = "I am a good boy I like milk. Doctor says milk is good for health.";
  
// String newText = text.replaceAll("milk", "water"); 
 
// print("Original Text: $text");
// print("Replaced Text: $newText");   
// } 

//Example of split()
// void main() { 
//   String allNames = "Ram, Hari, Shyam, Gopal";

//   List<String> listNames = allNames.split(",");
//   print("Value of listName is $listNames");

//   print("List name at 0 index ${listNames[0]}");
//   print("List name at 1 index ${listNames[1]}");
//   print("List name at 2 index ${listNames[2]}");
//   print("List name at 3 index ${listNames[3]}");
// } 



//Example of substring()
void main() { 
   String text = "i love computer"; 
   print("Print only computer: ${text.substring(7)}"); // from index 6 to the last index 
   print("Print only love: ${text.substring(2,6)}");// from index 2 to the 6th index 

    //reverse string
    print(text.split('').reversed.join());
    print(text.substring(7).split('').reversed.join());
    print(text.substring(2,6).split('').reversed.join());

    //capitalizing first letter
    print(text[0].toUpperCase()+text.substring(1));
} 



