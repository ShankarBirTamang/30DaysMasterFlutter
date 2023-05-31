/*
A factory constructor gives more flexibility to create an object. 
Generative constructors only create an instance of the class. 
But, the factory constructor can return an instance of the class or even subclass. 
It is also used to return the cached instance of the class.

Syntax:
class ClassName {
  factory ClassName() {
    // TODO: return ClassName instance
  }

  factory ClassName.namedConstructor() {
    // TODO: return ClassName instance
  }
}


Rules For Factory Constructors
1.Factory constructor must return an instance of the class or sub-class.
2.You can’t use 'this' keyword inside factory constructor.
3.It can be named or unnamed and called like normal constructor.
4.It can’t access instance members of the class.

WITHOUT FACTORY CONSTRUCTOR :

class Area{
  final int length;
  final int breadth;
  final int area;

  //Initializer list
  const Area (this.length,this.breadth): area = length * breadth;
}
void main(){
  Area a1 = Area(10,20);
  print("Area is : ${a1.area}");
  Area a2 = Area(-10,20);
  print("Area is :${a2.area}");
}

WITH FACTORY CONSTRUCTOR
Example 1:

class Area{
  final int length;
  final int breadth;
  final int area;

  const Area._internal(this.length,this.breadth): area = length * breadth;

  factory Area(int l , int b){
      if (l<0 || b<0){
        throw Exception("value of length and breadth must be positive.");
      }
      return Area._internal(l, b);
  }
}
void main(){
  Area a1 = Area(10, 20);
  print("Area is : ${a1.area}");
  Area a2 = Area(-10,20);
  print("Area is : ${a2.area}");
}

***********************************************************************************************
Example 2 :

class Person{
  String firstName;
  String lastName;
  //normal constructor
  Person(this.firstName,this.lastName);
  //factory constructor
  factory Person.fromMap(Map<String , dynamic> map){
    final first = map['firstName'] as String ;
    final last = map['lastName'] as String;
    return Person(first,last);
  }
}
void main(){
  final person1 = Person("Sankar", "Tamang") ;
  final person2 = Person.fromMap({'firstName':'Geeta','lastName':'Rai'});

  print("From normal constructor : ${person1.firstName} ${person1.lastName}");
  print("From factory constructor: ${person2.firstName} ${person2.lastName}");
}

***********************************************************************************************

Example 3:

enum ShapeType { Circle, Rectangle }

abstract class Shape{
    //factory constructor
    factory Shape (ShapeType type){
      switch(type){
        case ShapeType.Circle:
          return Circle();
        case ShapeType.Rectangle:
          return Rectangle();
        default :
          throw 'Invalid Shape Type';
      }       
    }
    //method
    void draw();
}
class Circle implements Shape{
  @override
  void draw(){
    print("Circle is Drawing.");
  }
}
class Rectangle implements Shape {
  @override
  void draw(){
    print("Rectangle is drawing.");
  }
}
void main(){
  var shape1 = Shape(ShapeType.Circle);
  var shape2 = Shape(ShapeType.Rectangle);
  shape1.draw();
  shape2.draw();
}

*************************************************************************************
Example 4 :

class Person {
  // final fields
  final String name;

  // private constructor
  Person._internal(this.name);

  // static _cache field
  static final Map<String, Person> _cache = <String, Person>{};

  // factory constructor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

void main() {
  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');
  // hashcode of person1 and person3 are same
  print("Person1 name is : ${person1.name} with hashcode ${person1.hashCode}");
  print("Person2 name is : ${person2.name} with hashcode ${person2.hashCode}");
  print("Person3 name is : ${person3.name} with hashcode ${person3.hashCode}");
}

*****************************************************************************************
SINGLETON
Singletons are a common design pattern in object-oriented programming. 
A singleton class can have only one instance and provides a global point of access to it. 
You can create a singleton in Dart by defining a factory constructor that always returns the same instance. 
It is mostly useful when you want to create a single instance of a class 
and use it throughout the application like database connection app.

Example :
class Singleton{
  //static variable
  static final Singleton _instance = Singleton._internal();

  //factory constructor
  factory Singleton(){
    return _instance;
  }

  Singleton._internal(); // private constructor
}
void main(){
  Singleton obj1 = Singleton();
  Singleton obj2 = Singleton();
  print(obj1.hashCode);
  print(obj2.hashCode);
}

Note: Here Singleton._internal() is a private constructor so that it can not be called from outside the library. 
The factory constructor is used to return the same instance of the class.

Key points:
Here It means factory constructor

It uses the factory keyword to define a factory constructor.
It returns an instance of the same class or sub-class.
It is used to implement factory design patterns. [Return sub-class instance based on input parameter as shown in example 4]
It is used to implement singleton design patterns. [Return the same instance every time]
It is used to initialize a final variable using logic that can’t be handled in the initializer list.
*/
///PRACTICE QUESTION
///Create an interface called Bottle and add a method to it called open(). 
///Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”. 
///Add a factory constructor to Bottle and return the object of CokeBottle. 
///Instantiate CokeBottle using the factory constructor and call the open() on the object.

//Creating interface class
abstract class Bottle{
  void open();    //Adding abstract method open()
  factory Bottle()=>CokeBottle();     //Adding factory constructor and returning object of CokeBottle class.
}

// Creating subclass Cokebottle that implements Bottle
class CokeBottle implements Bottle{
  @override
  void open(){
    print("Coke Bottle is opened.");
  }
}
void main(){
  var cokeBottle = Bottle();      //Instatiating Cokebottle using factory constructor
  cokeBottle.open();              // calling open() on the object.
}