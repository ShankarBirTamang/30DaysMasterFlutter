/*
Abstract classes are classes that cannot be initialized. 
It is used to define the behavior of a class that can be inherited by other classes. 
An abstract class is declared using the keyword abstract.

Syntax:
abstract class ClassName {
  //Body of abstract class

  method1();
  method2();
}

Abstract Method :
An abstract method is a method that is declared without an implementation. 
It is declared with a semicolon (;) instead of a method body.

Example :

abstract class Vehicle {
  // Abstract method
  void start();
  // Abstract method
  void stop();
}

class Car extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Car started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Bike started');
  }

  // Implementation of stop()
  @override
  void stop() {
    print('Bike stopped');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
}

**********************************************************************************************************
Example :

abstract class Shape{
  int dim1 , dim2 ;
  Shape(this.dim1 , this.dim2);
  void area();
}
class Rectangle extends Shape {
  //Constructor
  Rectangle(int dim1 , int dim2):super(dim1,dim2);
  //Implementation of area()
  @override
  void area(){
    print("The area of rectangle is ${dim1*dim2}");
  }
}
class Triangle extends Shape {
  //Constructor
  Triangle(int dim1 , int dim2):super(dim1,dim2);
  //Implementation of area()
  @override
  void area(){
    print("The area of Triangle is ${0.5*dim1*dim2}");
  }
}

void main(){
  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();

  Triangle triangle = Triangle(10, 20);
  triangle.area();
}
*********************************************************************************************************8
Key Points To Remember
1.You can’t create an object of an abstract class.
2.It can have both abstract and non-abstract methods.
3.It is used to define the behavior of a class that other classes can inherit.
4.Abstract method only has a signature and no implementation.
*/

abstract class Bank {
  String name;
  double rate;

  // Constructor
  Bank(this.name, this.rate);

  // Abstract method
  void interest();

  //Non-Abstract method: It have an implementation
  void display() {
    print('Bank Name: $name');
  }
}

class SBI extends Bank {
  // Constructor
  SBI(String name, double rate) : super(name, rate);

  // Implementation of interest()
  @override
  void interest() {
    print('The rate of interest of SBI is $rate');
  }
}

class ICICI extends Bank {
  // Constructor
  ICICI(String name, double rate) : super(name, rate);

  // Implementation of interest()
  @override
  void interest() {
    print('The rate of interest of ICICI is $rate');
  }
}

void main() {
  SBI sbi = SBI('SBI', 8.4);
  ICICI icici = ICICI('ICICI', 7.3);

  sbi.interest();
  icici.interest();
  icici.display();
}