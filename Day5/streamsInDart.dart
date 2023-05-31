///A stream is a sequence of asynchronous events representing multiple values that will arrive in the future. 
///Stream class deals with sequences of events instead of single events. 
///Stream has one or more listeners, and all listeners will receive the same value.

///Functions that return a stream
// Stream <String> getUserName() async*{
//     await Future.delayed(Duration(seconds: 1));
//     yield 'Ram';
//     await Future.delayed(Duration(seconds: 1));
//     yield 'Hari';
//     await Future.delayed(Duration(seconds: 1));
//     yield 'Shiva';
// }
// ///function that returns a stream immediately (Alternative way)
// Stream<String> getUserName1() {
//   return Stream.fromIterable(['Mark', 'John', 'Smith']);
// }

// //main function
// void main() async{
//   //we can use 'await for' loop to get the value from stream
//   await for(String name in getUserName()){
//     print(name);
//   }
//   await for(String name in getUserName1()){
//     print(name);
//   };
// }

///Example of async
// Future<int> doSomeLongTask() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 21;
// }main() async {
//   int result = await doSomeLongTask();
//   print(result); // prints '42' after waiting 2 second
// }


///Example of async *
// Stream <int> countNumber() async*{
//   for (int i =1 ;i <=5 ;i++){
//   await Future.delayed(const Duration(seconds: 1));
//   yield i ;
//   }
// } main () async{
//   await for (int i in countNumber()){
//     print(i);
//   }
// }


/// Example of yield *
// Stream<int> str(int n) async* {
//  if (n > 0) {  
//    await Future.delayed(Duration(seconds: 2));
//    yield n;
//    yield* str(n - 2);
//  }
// }

// void main() {
//  str(10).forEach(print);
// }




///Eg of Stream
// import 'dart:async';

// void main() {
//   var controller = StreamController();
//   controller.stream.listen((event) {
//     print(event);
//   });
//   controller.add('Hello');
//   controller.add(42);
//   controller.addError('Error!');
//   controller.close();
// }


///Eg2 of stream
// Stream<int> numberOfStream(int number) async* {
//   for (int i = 0; i <= number; i++) {
//     yield i;
//   }
// }

// void main(List<String> arguments) {
//   // Calling the Stream 
//   var stream = numberOfStream(6);
//   // Listening to Stream yielding each number
//   stream.listen((s) => print(s));
// }


///Eg3 of stream
Stream<int> str(int n) async* {
 for (var i = 1; i <= n; i++) {
   await Future.delayed(Duration(seconds: 1));
   yield i;
 }
}

void main() {
 str(10).forEach(print);
}