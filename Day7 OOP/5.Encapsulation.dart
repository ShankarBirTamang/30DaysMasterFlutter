/*
In Dart, Encapsulation means hiding data within a library, preventing it from outside factors.
 It helps you control your program and prevent it from becoming too complicated.

Encapsulation can be achieved by:
1.Declaring the class properties as private by using underscore(_).
2.Providing public getter and setter methods to access and update the value of private property.

Note: 
Dart doesn’t support keywords like public, private, and protected. 
Dart uses _ (underscore) to make a property or method private. 
The encapsulation happens at library level, not at class level.

GETTER & SETTER METHOD
Getter and setter methods are used to access and update the value of private property. 
Getter methods are used to access the value of private property. 
Setter methods are used to update the value of private property.
 
 Example :
 class Employee{
  // private properties
  String? _name;
  int? _id;
  //Getter method to access private property _id
  int getId(){
    return _id!;
  }
  //Gettermethod to access private property _name
  String getName(){
    return _name!;
  }
  //Setter method to update private property_id
  void setId(int id){
    this._id = id;
  }
  //Setter method to update private property_name
  void setName(String name){
    this._name = name;
  }
}
void main(){
  //Create an object of Employee class
  Employee emp = new Employee();
  //Setting value to the object using Setter
  emp.setId(1);
  emp.setName('Sankar');
  //Retrieve the values of object using Getter
  print("Employee Name: ${emp.getName()}");
  print("Employee Id: ${emp.getId()}");
}
 
*****************************************************************************************
Private property is a property that can only be accessed from same library. 
Dart does not have any keywords like private to define a private property. 
You can define it by prefixing an underscore (_) to its name. 

class Employee {
  // Private property
  var _name;

  // Getter method to access private property _name
  String getName() {
    return _name;
  }

  // Setter method to update private property _name
  void setName(String name) {
    this._name = name;
  }
}

void main() {
  var employee = Employee();
  employee._name = "John"; // It is working, but why?
  print(employee.getName());
}

The reason is that using underscore (_) before a variable or method name makes it library private not class private. 
It means that the variable or method is only visible to the library in which it is declared. 
It is not visible to any other library. 
In simple words, library is one file. If you write the main method in a separate file, this will not work.

READ ONLY PROPERTIES
You can control the properties’s access and implement the encapsulation in the dart by using the read-only properties. 
You can do that by adding the final keyword before the properties declaration. 
Hence, you can only access its value, but you cannot change it.

Note: 
Properties declared with the final keyword must be initialized at the time of declaration. 
You can also initialize them in the constructor.
Example:

class Student {
  final _schoolname = "ABC School";

  String getSchoolName() {
    return _schoolname;
  }
}

void main() {
  var student = Student();
  print(student.getSchoolName());
  // This is not possible
  //student._schoolname = "XYZ School";
}

*************************************************************************
class Vehicle{
  String? _model;
  int? _year;
  //Getter method
  String get model => _model!;
  int get year => _year!;
  //Setter method
  set model(String model)=> _model = model;
  set year(int year)=> _year = year;
}
void main(){
  var vehicle = Vehicle();
  vehicle.model = "Toyota";
  vehicle.year = 2023;
  print(vehicle.model);
  print(vehicle.year);
}

*************************************************************************
Why Encapsulation Is Important?
1. Data Hiding: Encapsulation hides the data from the outside world. 
                It prevents the data from being accessed by the code outside the class. This is known as data hiding.

2. Testability: Encapsulation allows you to test the class in isolation. 
                It will enable you to test the class without testing the code outside the class.

3. Flexibility: Encapsulation allows you to change the implementation of the class without affecting the code outside 
                the class.

4. Security: Encapsulation allows you to restrict access to the class members. 
              It will enable you to limit access to the class members from the code outside the library.

***************************************************************************
class NoteBook {
  // Private properties
  String? _name;
  double? _prize;

  // Constructor
  NoteBook(this._name, this._prize);

  // Getter method to access private property _name
  String get name => this._name!;

  // Getter method to access private property _prize
  double get prize => this._prize!;
}

void main() {
  // Create an object of NoteBook class
  NoteBook nb = new NoteBook("Dell", 500);
  // Display the values of the object
  print(nb.name);
  print(nb.prize);
}

***************************************************************************
GETTER METHOD WITH DATA VALIDATION
class Notebook{
  String? _name;
  int? _price;

  Notebook(this._name,this._price);
  //Getter method with validation
  String get name {
    if(_name==""){
      return "No Name";
    }
    return this._name!;
  }
  int get price => this._price!;
}
void main(){
  Notebook nb = new Notebook("Apple", 1000);
  print("First Notebook : ${nb.name}");
  print("First Notebook price: ${nb.price}");
  Notebook nb2 = new Notebook("", 500);
  print("Second Notebook : ${nb2.name}");
  print("Second Notebook price: ${nb2.price}");
}

***************************************************************************
GETTER METHOD WITH MAP

class Doctor {
  String? _name;
  int? _age;
  String? _gender;

  Doctor(this._name , this._age , this._gender);

  String get name => _name!;
  int get age => _age!;
  String get gender => _gender!;

  Map<String,dynamic> get map {
    return {"name":_name,"age":_age,"gender":_gender};
  }
}
void main(){
  Doctor doc = new Doctor("Sankar", 25, "Male");
  print(doc.map);
}


WHY GETTER ?
1.To access the value of private property.
2.To restrict the access of data members of a class.

************************************************************************************************
************************************************************************************************
SETTER METHOD
Setter is used to set the value of a property. 
It is mostly used to update a private property’s value. 
Setter provide explicit write access to an object properties.

Syntax:
set property_name (value) {
  // Setter body
}

*********************************************************************************
class Notebook {
  String? _name;
  int? _price;

  //setter to update private property_name
  set name(String name)=> this._name=name;
  //setter to update private property price
  set price(int price){
    if(price<0){                                              //Data validation
      throw Exception("Price can not be less than zero.");
    }
    this._price=price;
  } 
  //Method to display the value of properties
  void display(){
      print("Name: $_name");
      print("Price: $_price");
  }
}
void main(){
  Notebook nb = new Notebook(); // create an object of Notebook class
  nb.name = "Dell";             // setting values of object using setter
  nb.price = 50000;
  nb.display();                 //Display the values of the object
}

****************************************************************************************
class Student{
  // Private properties
  String? _name;
  int? _classNumber;
  // Setter method to update the private properties
  set name (String name)=> this._name = name;
  // Setter method to update the private properties _classNumber
  set classNumber(int classNumber){
    if(classNumber<=0 || classNumber>=12){
      throw ('Classrooom must be between 0 and 12');
    }
    this._classNumber = classNumber;
  }
  void display(){
    print("Name: $_name");
    print("ClassNumber : $_classNumber");
  }
}
void main(){
  //Create an object of Student class
  Student std = new Student();
  std.name = "Sankar";    //Setting value to object using setter
  std.classNumber = 11;
  std.display();    //Display the values of the object
}


Why Is Setter Important?
  1.It is used to set the value of a private property.
  2.It is also used for data validation.
  3.It gives you better control over the data.


*********************************************************************************************

class BankAccount {
  // Private property
  double _balance = 0.0;
  //Getter to read private property balance
  double get balance => _balance;
  //method to deposit amount
  void deposit(double amount){
    this._balance += amount;
  }
  //Method to withdraw amount
  void withdraw(double amount){
    if(this._balance>=amount){
      this._balance-=amount;
    }
    else {
      throw new Exception('Insufficient Balance.');
    }
  }
}
void main(){
  BankAccount bnk = new BankAccount();  //Create an object of BankAccount class
  bnk.deposit(1000);    //Deposit money
  print("Balance after deposit : ${bnk.balance}");    //Display the balance
  bnk.withdraw(500);    //Withdraw money
  print("Balance after Withdraw: ${bnk.balance}");    //Display the balance
}

*/

