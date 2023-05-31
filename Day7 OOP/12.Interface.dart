/*
An interface in Dart is a contract that defines a set of methods and properties that a class must implement. 
It declares the structure that a class should follow without providing any implementation details. 
In other words, an interface defines a set of rules that a class must adhere to.

t is used to achieve abstraction in the Dart programming language. 
When you implement an interface, you must implement all the properties and methods defined in the interface. 
Keyword implements is used to implement an interface.

Syntax:
class InterfaceName {
  // code
}

class ClassName implements InterfaceName {
  // code
}

DECLARING INTERFACE
In dart there is no keyword interface but you can use class or abstract class to declare an interface. 
All classes implicitly define an interface. Mostly abstract class is used to declare an interface.

// creating an interface using abstract class
abstract class Person {
  canWalk();
  canRun();
}

Example:
// creating an interface using concrete class
class Laptop {
    // method
  turnOn() {
    print('Laptop turned on');
  }
    // method
  turnOff() {
    print('Laptop turned off');
  }
}

class MacBook implements Laptop {
  // implementation of turnOn()
  @override
  turnOn() {
    print('MacBook turned on');
  }

  // implementation of turnOff()
  @override
  turnOff() {
    print('MacBook turned off');
  }
}

void main() {
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}

Note: Most of the time, abstract class is used instead of concrete class to declare an interface.

// abstract class as interface

abstract class Vehicle{
  void start();
  void stop();
}

//implements interface
class Car implements Vehicle{
  @override
  void start(){
    print("Car started.");
  }
  @override
  void stop(){
    print("Car stopped.");
  }
}
void main(){
  Car car = Car();
  car.start();
  car.stop();
}

****************************************************************************************************************

MULTIPLE INTERFACES:
class ClassName implements Interface1, Interface2, Interface3 {
  // code
}

Example :

abstract class Area{
  void area();
}
abstract class Perimeter{
  void perimeter();
}
class Rectangle implements Area , Perimeter {
  int length , breadth;

  Rectangle(this.length, this.breadth);

  @override
  void area(){
    print("The area of rectangle is ${length*breadth} .");
  }
  @override
  void perimeter(){
    print("The perimeter of rectangle is ${2*(length+breadth)} .");
  }
}
void main(){
  Rectangle rec = Rectangle(10,20);
  rec.area();
  rec.perimeter();
}

**********************************************************************************************
// abstract class as interface
abstract class Person {
    // properties
  String? name;
  // abstract method
  void run();
  void walk();
}

class Student implements Person {
    // properties
  String? name;
 
 // implementation of run()
 @override
  void run() {
    print('Student is running');
  }
  // implementation of walk()
  @override
  void walk() {
    print('Student is walking');
  }
}

void main() {
  var student = Student();
  student.name = 'John';
  print(student.name);
  student.run();
  student.walk();
}

*******************************************************************************************
Extends	                                                                     Implements
Used to inherit a class in another class.	                                   Used to inherit a class as an interface in another class.
Gives complete method definition to sub-class.	                             Gives abstract method definition to sub-class.
Only one class can be extended.                                            	 Multiple classes can be implemented.
It is optional to override the methods.	                                     Concrete class must override the methods of an interface.
Constructors of the superclass is called before the sub-class constructor.	  Constructors of the superclass is not called before the sub-class constructor.
The super keyword is used to access the members of the superclass.	          Interface members can’t be accessed using the super keyword.
Sub-class need not to override the fields of the superclass.	                Subclass must override the fields of the interface.

Key Points To Remember :
1.An interface is a contract that defines the capabilities of a class.
2.Dart has no keyword interface, but you can use class or abstract class to declare an interface.
3.Use abstract class to declare an interface.
4.A class can extend only one class but can implement multiple interfaces.
5.Using the interface, you can achieve multiple inheritance in Dart.
6.It is used to achieve abstraction.

*/

