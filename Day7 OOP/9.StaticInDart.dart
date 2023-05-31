/*
Static in Dart :
If you want to define a variable or method that is shared by all instances of a class, you can use the static keyword. 
  Static members are accessed using the class name. It is used for memory management.

Dart Static Variable
A static variable is a variable that is shared by all instances of a class. 
It is declared using the static keyword. 
It is initialized only once when the class is loaded. 
It is used to store the class-level data.


To declare a static variable in Dart, you must use the static keyword before the variable name.
class ClassName {
  static dataType variableName;
}

Example 1:

class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }
}

void main() {
  // Creating objects of Employee class
  Employee e1 = new Employee();
  e1.totalEmployee();
  Employee e2 = new Employee();
  e2.totalEmployee();
  Employee e3 = new Employee();
  e3.totalEmployee();
  print("${Employee.count}");
}

**************************************************************************************

Example :
class Student{
  String name;
  int id;
  static String schoolName = "Golden Achademy";
  Student(this.name, this.id);
  void display(){
    print("Id: ${this.id}");
    print("Name: ${this.name}");
    print("School Name: ${Student.schoolName}");
  }
}
void main(){
  Student std1 = Student("Sankar", 1);
  std1.display();
  Student std2 = Student("Jangbu", 2);
  std2.display();
}

********************************************************************************

STATIC METHOD
A static method is shared by all instances of a class. 
It is declared using the static keyword. You can access a static method without creating an object of the class.

Syntax:
class ClassName{
static returnType methodName(){
  //statements
}
}

Example :
class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}

void main() {
  print(
      "The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");
}

Example 2:
*/
import 'dart:math';
class PasswordGenerator{
  static String generatePassword(){
    List<String> allAphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [0,1,2,3,4,5,6,7,8,9];
    List<String> specialCharacters = ["@","#","\$","%","&"];
    List<String> password = [];
    for(int i =0;i<5;i++){
      password.add(allAphabets[Random().nextInt(allAphabets.length)]);
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password.add(specialCharacters[Random().nextInt(specialCharacters.length)]);
    }
    return password.join();
  }
}
void main(){
  print(PasswordGenerator.generatePassword());
}