void main() {
  var c = Complex(5, 2);

  c.real = 10; // setters at work
  c.real; // getters at work

  print(c.real);
  print(c.imaginary);
  print(c);
}

class Complex {
  num _real;
  num _imaginary;

  // setters and getters (this type of getters and setters
  // only work with _ed attribute (private attribute))
  get real => _real;
  set real(num value) => _real = value;

  get imaginary => _imaginary;
  set imaginary(num value) => _imaginary = value;

  Complex(this._real, this._imaginary); // constructor

  @override
  String toString() {
    //    return super.toString();
    if (_imaginary >= 0) {
      return '${_real} + ${_imaginary}i';
    }
    return '${_real} - ${_imaginary.abs()}i';
  }
}
