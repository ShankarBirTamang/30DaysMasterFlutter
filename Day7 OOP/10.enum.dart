/*
An 'enum' is a special type that represents a fixed number of constant values. An enum is declared using the keywork enum 
followed by the enum's name.

Syntax:
enum enumName {
    constantName1,
    constantName2,
    constantName3,
    constantName4,
    ...
    constantNameN
}

Example :

enum days { Sunday, Monday , Tuesday , Wednesday , Thursday , Friday , Saturday }

void main(){
  var today = days.Friday;
  switch (today) {
      case days.Sunday:
        print("Today is Sunday.");
        break;
      case days.Monday:
        print("Today is Monday.");
        break;
      case days.Tuesday:
        print("Today is Tuesday.");
        break;
      case days.Wednesday:
        print("Today is Wednesday.");
        break;
      case days.Thursday:
        print("Today is Thursday.");
        break;
      case days.Friday:
        print("Today is Friday.");
        break;
      case days.Saturday:
        print("Today is Saturday.");
        break;
  }
}

*********************************************************************************************

Example:

enum Gender { Male , Female , Others }

class Person {
  //Properties
  String? firstName ;
  String? lastName ;
  Gender? gender ;

  //Constructor
  Person(this.firstName, this.lastName,this.gender);

  //display method
  void display(){
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender : $gender");
  }
}

void main(){
  Person p1 = Person("Sankar","Tamang", Gender.Male);
  p1.display();
  Person p2 = Person("Khusbu","Gurung",Gender.Female);
  p2.display();
}

********************************************************************************************
Example :

enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

void main() {
 // Days.values: It returns all the values of the enum.
  for (Days day in Days.values) {
    print(day);
  }
}

***********************************************************************************
Advantages Of Enum In Dart :
1.It is used to define a set of named constants.
2.Makes your code more readable and maintainable.
3.It makes the code more reusable and makes it easier for developers.

Characteristics Of Enum
1.It must contain at least one constant value.
2.Enums are declared outside the class.
3.Used to store a large number of constant values.

Example :

enum CompanyType {
  soleProprietership("Sole ProprieterShip"),
  partnership("Partnership"),
  corporation("Corporation"),
  limitedLiabilityCompany("Limited Liability Company");

  //Members
  final String text;
  const CompanyType(this.text);
}
void main(){
  CompanyType soleProprietership = CompanyType.soleProprietership;
  print(soleProprietership.text);
}
*/
