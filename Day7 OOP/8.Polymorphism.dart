/*
Poly means many and morph means forms. Polymorphism is the ability of an object to take on many forms. 
As humans, we have the ability to take on many forms. We can be a student, a teacher, a parent, a friend, and so on. 
Similarly, in object-oriented programming, polymorphism is the ability of an object to take on many forms.

Note:
In the real world, polymorphism is updating or modifying the feature, function, or implementation 
that already exists in the parent class.

Polymorphism By Method Overriding
Method overriding is a technique in which you can create a method in the child class that has the same name as 
the method in the parent class. The method in the child class overrides the method in the parent class.

Syntax :
class ParentClass{
  void functionName(){
  }
}
class ChildClass extends ParentClass{
  @override
  void functionName(){
  }
}

*************************************************************************************

Example: 
class Animal{
  void eat(){
    print("Animal is eating.");
  }
}
class Dog extends Animal{
  @override
  void eat(){
    print("Dog is eating.");
  }
}
void main(){
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.eat();
}

*************************************************************************************

Example2:
class Vehicle {
  void run() {
    print("Vehicle is running");
  }
}

class Bus extends Vehicle {
  @override
  void run() {
    print("Bus is running");
  }
}

void main() {
  Vehicle vehicle = Vehicle();
  vehicle.run();

  Bus bus = Bus();
  bus.run();
}
*************************************************************************************
Example3: 
class Car{
  void power(){
    print("It runs on petrol.");
  }
}

class Honda extends Car{
  
}
class Tesla extends Car{
  @override
  void power(){
    print("It runs on electricity.");
  }
}

void main(){
  Honda honda=Honda();
  Tesla tesla=Tesla();
  
  honda.power();
  tesla.power();
}

*************************************************************************************
Example 4 :
class Employee{
  void salary(){
    print("Salary of Employee is \$1000");
  }
}
class Manager extends Employee{
  @override
  void salary(){
    print("Salary of Manager is \$2000");
  }
}
class Developer extends Employee{
  @override
  void salary(){
    print("Salary of Developer is \$3000");
  }
}
void main(){
  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary();
  developer.salary();
}

Advantage Of Polymorphism In Dart
1.Subclasses can override the behavior of the parent class.
2.It allows us to write code that is more flexible and reusable.
*/
