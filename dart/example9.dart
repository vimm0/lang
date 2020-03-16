void main() {
  //  num is parent of int and double
  // Object is the parent for all objects in dart
  num x = 10;
  // Complex Numbers
  // i^2 = -1
  // 5 + 2i
  // 10 +0i
  // 0 - 4i
  var c = Complex(5, 2);
  //  var c = Complex();
  //  c.imaginary = 2;
  //  c.real = 5;
  c.getReal();
  c.setReal(10);
  //  cascade operator
  var c1 = Complex(2, 5);
  //  var c1 = Complex()
  //      ..imaginary = 2
  //      ..real = 5;

  var r = Complex.real(10);
  var i = Complex.imaginary(-4);

  print(c == c1);
  print("Real: ${c.real}");
  print("Complex: ${c.imaginary}");
  print(c);
  print(r);
  print(i);

  //  print(c = c1);

}

class Complex {
  num real;
  num imaginary;


  // setters and getters

  num getReal() {
    return real;
  }

  void setReal(num real) {
    this.real = real;
  }

  num getImaginary() {
    return imaginary;
  }

  void setImaginary(num imaginary) {
    this.imaginary = imaginary;
  }


  //  Complex(this.real, this.imaginary); // constructor

  Complex(num real, num imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }

  //  named constructor
  //  alias for below constructor
  Complex.real(num real) : this(real, 0);

  //  Complex.real(num real){
  //    Complex(real, 0);
  //  }

  Complex.imaginary(num imaginary) : this(0, imaginary);

  //  Complex.imaginary(num imaginary){
  //    Complex(0, imaginary);
  //  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this.real == other.real && this.imaginary == other.imaginary;
  }

  @override
  String toString() {
    //    return super.toString();
    if (imaginary >= 0) {
      return '${real} + ${imaginary}i';
    }
    return '${real} - ${imaginary.abs()}i';
  }
}
