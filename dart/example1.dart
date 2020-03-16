void main() {
  //  Data Types
  //  numbers - (int, float)
  //  strings - "Hello!"
  //  booleans - true or false
  //  lists - (aka arrays) List<int>
  //  maps - hashmaps
  //  runes - unicode character sets
  //  symbols - #symbol

  //  var x = -10;
  //  print(x.abs());

  int x = 10;
  double y = 10.0;

  String s = "${x + y}";
  print(s);

  bool b = true;
  print(b);

  List l = [1, 2, 3];
  print(l[0]);

  List<String> ls = ['1', '2', '3'];
  print(ls[0]);

  Map map = {
    'A': 10,
    'B': 20,
    'C': 30,
  };
  print(map['A']);
}
