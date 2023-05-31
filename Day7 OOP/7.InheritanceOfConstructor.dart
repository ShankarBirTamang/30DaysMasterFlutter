/*
Inheritance of constructor is the process of inheriting the constructor of the parent class to the child class.
It is a way of reusing the code of parent class .
Example :

class Laptop{
  //Constructor
  Laptop(){
    print("This is laptop(Parent) constructor.");
  }
}
class MacBook extends Laptop{
  //constructor
  MacBook(){
    print("This is MacBook(Child) constructor.");
  }
}
void main(){
  var mb = MacBook();
}

Note: The constructor of the parent class is called first and then the constructor of child class is called.

**************************************************************************************************

INHERITING NAMED CONSTRUCTOR

class Laptop{
  //Constructor
  Laptop(){
    print("This is laptop(Parent) constructor.");
  }
  //Named Constructor
  Laptop.named(){
    print("Laptop named constructor.");
  }
}
class MacBook extends Laptop{
  //constructor
  MacBook():super.named(){
    print("This is MacBook(Child) constructor.");
  }
}
void main(){
  var mb = MacBook();
}

**************************************************************************************************

SUPER IN DART:
Super used to refer to the parent class. It is used to call the parent's class properties and methods.

Example:
class Laptop{
  void show(){
    print("This is show method of Laptop(Parent class).");
  }
}
class MacBook extends Laptop{
  void show(){
    super.show();   //Calling the show method of parent class
    print("This is show method of MacBook(Child class).");
  }
}
void main(){
  MacBook mb = new MacBook();
  mb.show();
}
**************************************************************************************************
ACCESSING SUPER PROPERTIES:
Example:
class Car {
  int noOfSeats = 4;
}

class Tesla extends Car {
  int noOfSeats = 6;

  void display() {
    print("No of seats in Tesla: $noOfSeats");
    print("No of seats in Car: ${super.noOfSeats}");
  }
}

void main() {
  var tesla = Tesla();
  tesla.display();
}
**************************************************************************************************

SUPER WITH CONSTRUCTOR

class Employee{
  Employee(String name, double salary){
      print("Employee Constructor.");
      print("Name: $name");
      print("Salary: $salary");
  }
}
class Manager extends Employee{
  Manager(String name , double salary):super(name,salary){
    print("This is Manager Constructor.");
  }
}
void main(){
  Manager manager = new Manager("Sankar", 100000);
}
**************************************************************************************************
SUPER WITH NAMED CONSTRUCTOR
class Employee{
  //Named Constructor
  Employee.named(){
    print("This is Employee named constructor.");
  }
}
class Manager extends Employee{
  //Named Constructor
  Manager.named(): super.named(){
    print("This is Manager named constructor.");
  }
}
void main(){
  Manager mb = new Manager.named();
}

**************************************************************************************************

SUPER WITH MULTILEVEL INHERITANCE IN DART

class Laptop {
  // Method
  void display() {
    print("Laptop display");
  }
}

class MacBook extends Laptop {
  // Method
  void display() {
    print("MacBook display");
    super.display();
  }
}

class MacBookPro extends MacBook {
  // Method
  void display() {
    print("MacBookPro display");
    super.display();
  }
}

void main() {
  var macbookpro = MacBookPro();
  macbookpro.display();
}
*/