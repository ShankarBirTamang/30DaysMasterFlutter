//Named parameter
void fullName({required String firstName, required String lastName}){
  print("Your fullname is  $firstName $lastName .");
}
//Positional parameter (with optional parameter)
void greetings(String fullName , String gender , [String title ="Mr./Mrs./Ms."]){
  print("Hello $title $fullName, you are $gender. ");
}

void main(){
  fullName(firstName: 'Sankar', lastName:'Tamang');
  fullName( lastName: 'Tamang', firstName: 'Jangbu');

  greetings("Hari Sharma", "Male");
  greetings("Geeta Rai" , "Female","Ms.");

}

// In named parameter , instead of required we can use string? also.