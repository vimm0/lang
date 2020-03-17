void main() {
//  List<String> list = List();
//  Map<int, String> map = Map();
  PrintItems<String> string = PrintItems(5, "Hi");
  string.printItem();

  PrintItems<double> d = PrintItems(6, 10.2);
  d.printItem();

  PrintItems<PrintItems> recur = PrintItems(3, string);
  recur.printItem();

  generic(10, "Hello");
}

// Generic type class
class PrintItems<T> {
//class PrintItems<T extends num> {
  int times;
  T printedItem;

  PrintItems(this.times,
      this.printedItem,);

  void printItem() {
    for (int i = 0; i < times; i++) {
      print(printedItem);
    }
  }

}

// generic type function
//String generic<T, S>(T a, S b){
//  print("$a and $b");
//  return "$a and $b";
//}

// Functional method return generic type
T generic<T, S>(T a, S b){
//T generic<T extends num, S extends num>(T a, S b){
  print(a);
  return a;
}
