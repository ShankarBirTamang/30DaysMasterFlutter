/*
Not all functions needs name . Those functions which does not have name and return type are anonymous function.

Syntax :
  (parameterList){
    //statements
  }

*/
// void main(){
//   List<String> flowers = ['Rose','Lily','Lotus','Rhododendron','Marigold','Sunflower'];
//   flowers.forEach((flower) {    //anonymous function
//     print(flower);
//   });
// }


void main(){
  var cube = (int number){    //anonymous function
      return number * number * number ;
  };
  print("The cube of 2 is ${cube(2)}");
  print("The cube of 3 is ${cube(3)}");
}