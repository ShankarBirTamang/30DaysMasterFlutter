/*
Inheritance is a sharing of behaviour between two classes. 
It allows you to define a class that extends the functionality of another class. 
The extend keyword is used for inheriting from parent class.

Note : 
Whenever you use inheritance, 
it always create a is-a relation between the parent and child class like Student is a Person, 
Truck is a Vehicle, Cow is a Animal etc.

Dart supports single inheritance, which means that a class can only inherit from a single class. 
Dart does not support multiple inheritance which means that a class cannot inherit from multiple classes.

SYNTAX :
class ParentClass {
  // Parent class code
}

class ChildClass extends ParentClass {
  // Child class code
}

Terminology:
1.Parent Class: The class whose properties and methods are inherited by another class is called parent class. 
It is also known as base class or super class.

2.Child Class: The class that inherits the properties and methods of another class is called child class. 
It is also known as derived class or sub class.

Example 1 :

class Person{
  //Properties
  String? name;
  int? age;
  //Method
  void display(){
    print("Name: $name");
    print("Age: $age");
  }
}
//Here In student class , we are extending the properties and methods of the Person class
class Student extends Person{
  //Fields
  String? schoolName;
  String? schoolAddress;
  //Methods
  void displaySchoolInfo(){
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}
void main(){
  var student = Student();
  student.name = "Sankar";
  student.age = 25;
  student.schoolName = "Purwanchal";
  student.schoolAddress = "Tinkune";
  student.display();
  student.displaySchoolInfo();
}

***************************************************************************************
Advantages Of Inheritance In Dart :
1.It promotes reusability of the code and reduces redundant code.
2.It helps to design a program in a better way.
3.It makes code simpler, cleaner and saves time and money on maintenance.
4.It facilitates the creation of class libraries.
5.It can be used to enforce standard interface to all children classes.

Example 2 :

class Car {
  String? color;
  int? year ;

  void start(){
    print("Car started ...");
  }
}
class BMW extends Car {
  String? model;
  int? prize ;

  void showDetails(){
    print("Model: $model");
    print("Prize : $prize");
  }
}
void main(){
  var bmw = BMW();
  bmw.color = "Yellow";
  bmw.year = 2023;
  bmw.model = "Blue";
  bmw.prize = 20000;
  bmw.start();
  bmw.showDetails();
}


********************************************************************************************

Types Of Inheritance In Dart :

1.Single Inheritance - In this type of inheritance, a class can inherit from only one class. 
In Dart, we can only extend one class at a time.

2.Multilevel Inheritance - In this type of inheritance, a class can inherit from another class 
and that class can also inherit from another class. 
In Dart, we can extend a class from another class which is already extended from another class.

3.Hierarchical Inheritance - In this type of inheritance, parent class is inherited by multiple subclasses. 
For example, the Car class can be inherited by the Toyota class and Honda class.

4.Multiple Inheritance - In this type of inheritance, a class can inherit from multiple classes. 
Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.

*/


