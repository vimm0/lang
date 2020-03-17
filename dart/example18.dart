import 'dart:io';

void main() {
  int index;
  List<String> names = [
    "John",
    "Jackie",
    "Jerry",
    "Sarah",
  ];
  String input;

  print("Enter an integer: ");
  input = stdin.readLineSync();
  try {
    index = int.parse(input);
    print(names[index]);
  } on FormatException {
    print("Format exception Error");
  } on RangeError {
    print("Range Error");

  //  catch (e) {
  //    print(e);

  } finally{
    print("you selected $index out of ${names.length}");
  }
}
