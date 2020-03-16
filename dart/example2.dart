//add(a, b) {
//  return a + b;
//}
//
//void main() {
//  print(add(1, 2));
//  print(add(20.0, 30.0));
//  print(add("a", "b"));
//  print(add(true, false));
//}

int add(int a, int b){
  return a + b;
}

Function fun;
exec(Function op, x, y){
  return op(x, y);
}
void main(){
  fun = add; //  assign add reference to fun variable and not called
//  var result = fun(20, 30);
  var result = exec(add, 20, 30);
//  var result = add(20, 30);
  print("Result is ${result}");
}
