import 'dart:math';

void main() {
  //  Square square = Square(10.0);
  //  Rectangle rectangle = Rectangle(10.0, 12.0);
  //  Circle circle = Circle(2.0);
  //
  //  print(square.name);
  //  print(rectangle.name);
  //  print(circle.name);

  Shape randShape;

  Random random = Random();
  int choice = random.nextInt(3);

  switch (choice) {
    case 0:
      randShape = Circle(
        random.nextInt(10) + 1.0,
      );
      break;
    case 1:
      randShape = Rectangle(
        random.nextInt(10) + 1.0,
        random.nextInt(10) + 1.0,
      );
      break;
    case 2:
      randShape = Square(
        random.nextInt(10) + 1.0,
      );
      break;
    default:
      print("will never execute");
  };

  print(randShape.name);
  print(randShape.area);
  print(randShape.perimeter);
}

// Abstract class only defines interface for other class (cannot instantiate abstract class)
abstract class Shape {
  double get perimeter;

  double get area;

  String get name;
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double get area => pi * (radius * radius);

  @override
  String get name => "I am a circle with radius ${radius}";

  @override
  double get perimeter => 2 * pi * radius;
}

class Rectangle extends Shape {
  double length, width;

  Rectangle(this.length, this.width);

  @override
  double get area => length * width;

  @override
  String get name => 'I am a rectangle with length $length and width $width';

  @override
  double get perimeter => length * 2 + width * 2;
}

class Square extends Rectangle {
  Square(double side,) : super(
    side,
    side,
  );

  @override
  String get name => 'I am a square with side of $length';

}
