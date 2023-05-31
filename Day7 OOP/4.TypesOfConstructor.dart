/*
1. DEFAULT CONSTRUCTOR

The constructor which is automatically created by the dart compiler if you don’t create a constructor is called a default constructor. 
A default constructor has no parameters. 
A default constructor is declared using the class name followed by parentheses ().

Example:
class Laptop {
  String? brand;
  int? prize;

  // Constructor
  Laptop() {
    print("This is a default constructor");
  }
}

void main() {
  // Here laptop is object of class Laptop.
  Laptop laptop = Laptop();
}

********************************************************************************
Example:
class Student {
  String? name;
  int? age;
  String? schoolname;
  String? grade;

  // Default Constructor
  Student() {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    schoolname = "ABC School";
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student();
  student.name = "John";
  student.age = 10;
  student.grade = "A";
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("School Name: ${student.schoolname}");
  print("Grade: ${student.grade}");
}

***********************************************************************************************
***********************************************************************************************
2. PARAMETERIZED CONSTRUCTOR
    class Student {
      String? name;
      int? age;
      int? rollNumber;
      // Constructor
      Student(this.name, this.age, this.rollNumber);
    }
    
    void main(){
        // Here student is object of class Student. 
        Student student = Student("John", 20, 1);
        print("Name: ${student.name}");
        print("Age: ${student.age}");
        print("Roll Number: ${student.rollNumber}");
    }

********************************************************************************
Example:
PARAMETERIZED CONSTRUCTOR WITH NAMED PARAMETER

    class Student {
      String? name;
      int? age;
      int? rollNumber;
    
      // Constructor
      Student({String? name, int? age, int? rollNumber}) {
        this.name = name;
        this.age = age;
        this.rollNumber = rollNumber;
      }
    }
    
    void main(){
        // Here student is object of class Student. 
        Student student = Student(name: "John", age: 20, rollNumber: 1);
        print("Name: ${student.name}");
        print("Age: ${student.age}");
        print("Roll Number: ${student.rollNumber}");
    }

********************************************************************************

PARAMTERIZED CONSTRUCTOR WITH DEFAULT VALUES

    class Student {
      String? name;
      int? age;
    
      // Constructor
      Student({String? name = "John", int? age = 0}) {
        this.name = name;
        this.age = age;
      }
    }
    
    void main(){
        // Here student is object of class Student. 
        Student student = Student();
        print("Name: ${student.name}");
        print("Age: ${student.age}");
    }

***********************************************************************************************
***********************************************************************************************
3. NAMED CONSTRUCTOR

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Default Constructor
  Student() {
    print("This is a default constructor");
  }

  // Named Constructor
  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student.namedConstructor("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}

********************************************************************************

class Mobile {
  String? name;
  String? color;
  int? prize;

  Mobile(this.name, this.color, this.prize);
  // here Mobile() is a named constructor
  Mobile.namedConstructor(this.name, this.color, [this.prize = 0]);

  void displayMobileDetails() {
    print("Mobile name: $name.");
    print("Mobile color: $color.");
    print("Mobile prize: $prize");
  }
}

void main() {
  var mobile1 = Mobile("Samsung", "Black", 20000);
  mobile1.displayMobileDetails();
  var mobile2 = Mobile.namedConstructor("Apple", "White");
  mobile2.displayMobileDetails();
}

********************************************************************************

class Animal {
  String? name;
  int? age;

  // Default Constructor
  Animal() {
    print("This is a default constructor");
  }

  // Named Constructor
  Animal.namedConstructor(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // Named Constructor
  Animal.namedConstructor2(String name) {
    this.name = name;
  }
}
void main(){
  // Here animal is object of class Animal.
  Animal animal = Animal.namedConstructor("Dog", 5);
  print("Name: ${animal.name}");
  print("Age: ${animal.age}");

  Animal animal2 = Animal.namedConstructor2("Cat");
  print("Name: ${animal2.name}");
}

********************************************************************************
import 'dart:convert';

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);
  Person.fromJson(Map<String,dynamic> json){
    name = json['name'];
    age = json['age'];
  }
  Person.fromJsonString(String jsonString){
    Map<String,dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}

void main(){
  String jsonString1 = '{"name":"Sankar","age":28}';
  String jsonstring2 = '{"name":"Jangbu","age":30}';
  // Here person is the object of class Person
  Person p1 = Person.fromJsonString(jsonString1);
  print("Person1 name: ${p1.name}");
  print("Person1 age : ${p1.age}");

  Person p2 = Person.fromJsonString(jsonstring2);
  print("Person2 name : ${p2.name}");
  print("Person2 age : ${p2.age}");

}

***********************************************************************************************
***********************************************************************************************
4. CONSTANT CONSTRUCTOR
Constant constructor is a constructor that creates a constant object. 
A constant object is an object whose value cannot be changed. 
A constant constructor is declared using the keyword const.

Rules:
All properties of the class must be final.
It does not have any body.  
Only class containing const constructor is initialized using the const keyword.

Example :
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

void main() {
  // p1 and p2 has the same hash code.
  Point p1 = const Point(1, 2);
  print("The p1 hash code is: ${p1.hashCode}");

  Point p2 = const Point(1, 2);
  print("The p2 hash code is: ${p2.hashCode}");
  // without using const
  // this has different hash code.
  Point p3 = Point(2, 2);
  print("The p3 hash code is: ${p3.hashCode}");

  Point p4 = Point(2, 2);
  print("The p4 hash code is: ${p4.hashCode}");
}

********************************************************************************

class Student {
  final String? name;
  final int? age;
  final int? rollNumber;

  // Constant Constructor
  const Student({this.name, this.age, this.rollNumber});
}

void main() {
  // Here student is object of Student.
  const Student student = Student(name: "John", age: 20, rollNumber: 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}

********************************************************************************

class Car{
  final String? name;
  final String? model;
  final int? price ;

  //constant constructor
  const Car({this.name, this.model , this.price});
}
void main(){
  const Car car = Car(name: "BMW",model: "X5",price: 50000);
  print("Name: ${car.name}");
  print("Model: ${car.model}");
  print("Price: ${car.price}");
}

********************************************************************************
class Customer {
  final String? name;
  final int? age;
  final int? phone;

  const Customer({this.name , this.age , this.phone});
}

void main(){
  const Customer customer = Customer(name: "Sankar",age: 25,phone: 9812397513);
  print("Customer name: ${customer.name}");
  print("Customer age: ${customer.age}");
  print("Customer phone: ${customer.phone}");
}
*/
