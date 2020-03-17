enum Status {
  stopped,
  running,
  paused,
}

void main() {
  PrintItems<String> string = PrintItems(5, "Hi", Status.stopped);
  string.prints();

  PrintItems<double> d = PrintItems(6, 10.2,Status.running);
  d.prints();

  PrintItems<PrintItems> recur = PrintItems(3, string, Status.paused);
  recur.prints();

//  generic(10, "Hello");
}

// Generic type class
class PrintItems<T> {
//class PrintItems<T extends num> {
  int times;
  T printedItem;
  Status status;

  PrintItems(this.times, this.printedItem, this.status);

  void prints() {
    if (status.index == 1) {
      for (int i = 0; i < times; i++) {
        print(printedItem);
      }
    } else {
      print("Item stopped: $status ${status.index}");
    }
  }

}
//
//// generic type function
////String generic<T, S>(T a, S b){
////  print("$a and $b");
////  return "$a and $b";
////}
//
//// Functional method return generic type
//T generic<T, S>(T a, S b) {
////T generic<T extends num, S extends num>(T a, S b){
//  print(a);
//  return a;
//}
//

