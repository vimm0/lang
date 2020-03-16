void main() {
  // class A type call class C type object
  // Example: object of C type would be
  // treated as type of A class

  A c = C("C");
  c.hello();
  //  c.goodbye();
  //  c.hi();

  //  Casting
  // casting would allow us to call the
  //  method which would may not be callable
  // because of implementation
  (c as B).goodbye();
  (c as C).hi();
  (c as C).printStamp();
}

// mixins are ways of appending attributes from
//one class to another without inheritance
// we should use keyword `with` for using class as `mixin`
class TimeStamp {
  DateTime time = DateTime.now();

  void printStamp() {
    print(time);
  }
}

class A {
  void hello() {
    print("Hello from A");
  }

  // try commenting hi and goodbye method
  void hi() {
    ////    print("Hello from B");
  }

  void goodbye() {
    ////    print("Hello from B");
  }
}

class B {
  String b;

  B(this.b);

  void hi() {
    print("Hello from B");
  }

  void goodbye() {
    print("Bye bye $b");
  }
}

// usage of inheritance
//class C implements A, B {
//  C(this.b);
//
//  @override
//  void hello() {
//    print("Hello from C");
//  }
//
//  @override
//  void hi() {
//    print("Hi from C");
//  }
//
//  @override
//  String b;
//
//  @override
//  void goodbye() {
//    print('Bye bye $b');
//  }
//}

//usage of mixins
class C with TimeStamp implements A, B {
  C(this.b);

  @override
  void hello() {
    print("Hello from C");
  }

  @override
  void hi() {
    print("Hi from C");
  }

  @override
  String b;

  @override
  void goodbye() {
    print('Bye bye $b');
  }
}
