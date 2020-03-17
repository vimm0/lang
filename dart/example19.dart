// Exception
class Person{
  String name;
  int age;

  Person(this.name, this.age);

  @override
  String toString(){
    return name;
  }
}

class Pub{
  List<Person> drinking = List();

  void checkAge(Person p){
    if(p.age < 18){
      throw TooYoungException(p);
    } else {
      drinking.add(p);
    }
  }
}

class TooYoungException implements Exception {
  Person p;

  TooYoungException(this.p);

  @override
  String toString(){
    return "${p.name} is too young for the pub!";
  }
}



void main(){
  Pub pub = Pub();

  try{
    pub.checkAge(Person("Jack", 24));
    pub.checkAge(Person("Adarsh", 22));
    pub.checkAge(Person("John", 12));
  } catch (e) {
    print(e);
  }
  print(pub.drinking);
}
