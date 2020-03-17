void main() {
  Animal a = Animal("dog");
  print(a is Dog);

  Animal b = Animal("cat");
  print(b is Cat);

  Animal c = Animal("Rabit");
  print(c is Dog);
}

class Animal {
  String type;

  factory Animal(String type){
    if (type == "cat") {
      return Cat(type);
    } else if (type == "dog") {
      return Dog(type);
    } else {
      return Animal._type(type);
    }
  }
  Animal._type(type);
}

class Cat extends Animal {
  Cat(String type) : super._type(type);

  @override
  String toString() {
    return type;
  }
}

class Dog extends Animal {
  Dog(String type) : super._type(type);

  @override
  String toString() {
    return type;
  }
}
