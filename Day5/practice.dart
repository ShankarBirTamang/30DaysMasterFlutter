///1. Write a program that read contents of file asynchronously , display on the console , modify it and write the
///   modified contents on another file .

// import 'dart:io';

// void main() async{
//   //Reading contents of file asynchronously
//   var inputfile = File('input.txt');
//   var contents = await inputfile.readAsString();
//   print(contents);

//   // Modify the contents
//   var modifiedContents = "Modified: $contents";

//   //Writing the modified contents to another file asynchronously
//   File outputFile = File('output.txt');
//   await outputFile.writeAsString(modifiedContents);
// }



/// 2. Write a program that prints current time after 5 seconds

// void main() async{
//   Future.delayed(Duration(seconds: 5), () {
//     DateTime currentTime = DateTime.now();
//     print("Current Time after 5second : ${currentTime.toString()}");
//    });
//   print("Current Time: ${DateTime.now().toString()}");
//   print("Waiting for 5 second...");
// }




///3. Write a program that uses the Future class to perform multiple asynchronous operations in parallel, 
///and then uses the Future.wait() method to wait for all the operations to complete before continuing.


void main() async{
  List<Future<String>> asyncOperations = [
    getAsyncData("Operation 1", Duration(seconds: 2)),
    getAsyncData("Operation 2", Duration(seconds: 1)),
    getAsyncData("Operation 3", Duration(seconds: 3)),
  ];

  print("Performing asynchronous operations...");

  Future.wait(asyncOperations)
      .then(( results) {
        print("All operations completed!");
        print("Results: $results");
      })
      .catchError((error) {
        print("An error occurred: $error");
      });
}

Future<String> getAsyncData(String operation,Duration delay) {
  return Future.delayed(delay, () =>"Result of $operation");
}

