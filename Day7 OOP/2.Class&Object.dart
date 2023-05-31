/*
In object-oriented programming, a class is a blueprint for creating objects. 
A class defines the properties and methods that an object will have. 
For example, a class called Dog might have properties like breed, color and methods like bark, run.

You can declare a class in dart using the class keyword followed by class name and braces {}. 
It’s a good habit to write class name in PascalCase. 
For example, Employee, Student, QuizBrain, etc.

Syntax :
class ClassName {
// properties or fields
// methods or functions
}

Example : 
class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

Example :
class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}


Example:
class Area {
  double? length;
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }
}

***************************************************************************************************

In object-oriented programming, an object is a self-contained unit of code and data. 
Objects are created from templates called classes. 
An object is made up of properties(variables) and methods(functions). 
An object is an instance of a class.

For example, a bicycle object might have attributes like color, size, and current speed. 
It might have methods like changeGear, pedalFaster, and brake.

In object-oriented programming, instantiation is the process of creating an instance of a class 

Declaring object: 
ClassName objectName = ClassName();

Example :
    class Bicycle {
      String? color;
      int? size;
      int? currentSpeed;
    
      void changeGear(int newValue) {
        currentSpeed = newValue;
      }
    
      void display() {
        print("Color: $color");
        print("Size: $size");
        print("Current Speed: $currentSpeed");
      }
    }

    void main(){
        // Here bicycle is object of class Bicycle. 
        Bicycle bicycle = Bicycle();
        bicycle.color = "Red";
        bicycle.size = 26;
        bicycle.currentSpeed = 0;
        bicycle.changeGear(5);
        bicycle.display();
    }

************************************************************************

Example :
class Animal {
      String? name;
      int? numberOfLegs;
      int? lifeSpan;
    
      void display() {
        print("Animal name: $name.");
        print("Number of Legs: $numberOfLegs.");
        print("Life Span: $lifeSpan.");
      }
    }

    void main(){
        // Here animal is object of class Animal. 
        Animal animal = Animal();
        animal.name = "Lion";
        animal.numberOfLegs = 4;
        animal.lifeSpan = 10;
        animal.display();
    }

************************************************************************
Example :
    class Car {
      String? name;
      String? color;
      int? numberOfSeats;
    
      void start() {
        print("$name Car Started.");
      }
    }

    void main(){
        // Here car is object of class Car. 
        Car car = Car();
        car.name = "BMW";
        car.color = "Red";
        car.numberOfSeats = 4;
        car.start();

        // Here car2 is another object of class Car.
        Car car2 = Car();
        car2.name = "Audi";
        car2.color = "Black";
        car2.numberOfSeats = 4;
        car2.start();
    }

************************************************************************
Example:
class Rectangle{
  //properties of rectangle
  double? length;
  double? breadth;
  
  //functions of rectangle
  double area(){
    return length! * breadth!;          //Here ! is used to tell the compiler that the variable is not null.
  }
}

void main(){
  //object of rectangle created
  Rectangle rectangle = Rectangle();
  
  //setting properties for rectangle
  rectangle.length=10;
  rectangle.breadth=5;
  
  //functions of rectangle called
  print("Area of rectangle is ${rectangle.area()}.");
}

************************************************************************

Example:
class SimpleInterest{
  //properties of simple interest
  double? principal;
  double? rate;
  double? time;
  
  //functions of simple interest
  double interest(){
    return (principal! * rate! * time!)/100;
  }
}
void main(){
  //object of simple interest created
  SimpleInterest simpleInterest = SimpleInterest();
  
  //setting properties for simple interest
  simpleInterest.principal=1000;
  simpleInterest.rate=10;
  simpleInterest.time=2;
  
  //functions of simple interest called
  print("Simple Interest is ${simpleInterest.interest()}.");
}

************************************************************************


*/