//A Switch case is used to execute the code block based on the condition.
//Alternative of if-else-if
/*
switch(expression) {
    case value1:
        // statements
        break;
    case value2:
        // statements
        break;
    case value3:
        // statements
        break;
    default:
       // default statements
}
*/
// void main() {
//   var dayOfWeek = 5;
//   switch (dayOfWeek) {
//     case 1:
//         print("Day is Sunday.");
//         break;
//     case 2:
//         print("Day is Monday.");
//       break;
//     case 3:
//       print("Day is Tuesday.");
//       break;
//     case 4:
//         print("Day is Wednesday.");
//       break;
//     case 5:
//         print("Day is Thursday.");
//       break;
//     case 6:
//         print("Day is Friday.");
//       break;
//     case 7:
//         print("Day is Saturday.");
//       break;
//     default:
//         print("Invalid Weekday.");
//       break;
//   }
// }

//Switch case On Strings
// void main() {
//  const weather = "cloudy";

//   switch (weather) {
//     case "sunny":
//         print("Its a sunny day. Put sunscreen.");
//         break;
//     case "snowy":
//         print("Get your skis.");
//       break;
//     case "cloudy":
//     case "rainy": 
//       print("Please bring umbrella.");
//       break;
//     default:
//         print("Sorry I am not familiar with such weather.");
//       break;
//   }
// }


//Switch Case On Enum
// An enum or enumeration is used for defining value according to you. You can define your own type with a finite number of options. 
// Here is the syntax for defining enum.

// enum enum_name { 
//   constant_value1, 
//   constant_value2, 
//   constant_value3 
//   }

// // define enum outside main function
// enum Weather{ sunny, snowy, cloudy, rainy}
// // main method
// void main() {
//  const weather = Weather.cloudy;
  
//   switch (weather) {
//     case Weather.sunny:
//         print("Its a sunny day. Put sunscreen.");
//         break;
//     case Weather.snowy:
//         print("Get your skis.");
//       break;
//     case Weather.rainy:
//     case Weather.cloudy:
//       print("Please bring umbrella.");
//       break;
//     default:
//         print("Sorry I am not familiar with such weather.");
//       break;
//   }
// }

