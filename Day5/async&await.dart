///Synchronous function
// String createOrderMsg(){
//     var order = fetchUserOrder();
//     return 'Your order is : $order';
// }
// Future<String> fetchUserOrder()=> 
//     //Imagine that this function is more complex and slow
//     Future.delayed(Duration(seconds: 3),()=>'Milk Coffee');
// void main(){
//   print("Fetching user order....");
//   print(createOrderMsg());
// }

///ASYNCRONOUS FUNCTION
///async: You can use the async keyword before a function’s body to mark it as asynchronous.
///async function: An async function is a function labeled with the async keyword.
//await is used to get the completed result of an asynchronous expression. 
//The await keyword only works within an async function.

// Future<String> createOrderMsg() async{      //Changed to Futrue<String>   //async used before function body
//   var order = await fetchUserOrder();       // await keywords used before asynchronous function
//   return 'Your order is : $order';
// }

// Future<String> fetchUserOrder()=>Future.delayed(Duration(seconds: 3),()=>'Milk Coffee');

// Future<void> main() async{                //Changed to Futrue<void>
//   print("Fetching user order ...");
//   print(await createOrderMsg());          // await keywords used before asynchronous function
// }






Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}