// Initializer list
void main() {
  var n1 = Complex(3, -2);
  var n2 = Complex(1, 4);

  print(n1 + n2);
  print(n1._multiply(n2));
  // Static method calling from class instead of calling from instance or object
  print(Complex.subtract(n1, n2));
  print("Counter: ${Complex.counter}");
  print(Quaternion(1, 2, 3));
}

class Complex {
  final num _real;
  final num _imaginary;
  static num counter = 0;

  // setters and getters (this type of getters and setters
  // only work with _ed attribute (private attribute))
  get real => _real;

//  set real(num value) => _real = value;

  get imaginary => _imaginary;

//  set imaginary(num value) => _imaginary = value;

  //  Complex(this._real, this._imaginary) // constructor

  // An initializer list allows
  // fields to be defined before the constructor body.
  // This is required for final fields.

  Complex(num r, num i)
      : this._real = r,
        this._imaginary = i; // constructor

  Complex.real(num real) : this(real, 0);

  Complex.imaginary(num imaginary) : this(0, imaginary);

  // operator
  Complex operator +(Complex c) {
    return Complex(
      this.real + c.real,
      this.imaginary + c.imaginary,
    );
  }

  // (3 -2i) * (1 + 4i) = 3 + -2i + 12i + 8 = 11 + 10i
  Complex _multiply(Complex c) {
    var first = this.real * c.real;
    var inner = this.imaginary * c.real;
    var outer = this.real * c.imaginary;
    var last = -(this.imaginary * c.imaginary);

    return Complex(
        first + last,
        inner + outer

    );
  }

  static Complex subtract(Complex c1, Complex c2) {
    return Complex(
      c1.real - c2.real,
      c1.imaginary - c2.imaginary,
    );
  }

  @override
  bool operator ==(other) {
    if (!(other is Complex)) {
      return false;
    }
    return this.real == other._real && this.imaginary == other._imaginary;
  }


  @override
  String toString() {
    if (_imaginary >= 0) {
      return '${_real} + ${_imaginary}i';
    }
    return '${_real} - ${_imaginary.abs()}i';
  }
}

// Quaternion
// u + vi + xj
// i = j = sqrt(-1)

class Quaternion extends Complex {
  num jImage;

  Quaternion(num rel,
      num imaginary,
      this.jImage,) : super(
    real,
    imaginary,
  );
  @override
  String toString(){
    if (this.jImage >= 0 && this._imaginary >= 0){
      return '${this._real} + ${this.imaginary}i + ${this.jImage}j';
    }
    if (this.jImage >= 0 && this._imaginary < 0){
      return '${this._real} - ${this.imaginary.abs()}i + ${this.jImage}j';
    }
    return '${this._real} - ${this.imaginary.abs()}i - ${this.jImage.abs()}j';
  }
}
