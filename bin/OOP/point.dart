class Point {
  //& Attributes
  double x = 0.0;
  double y = 0.0;

  //& Constructors
  // Default Constructor
  // * Point() ==> Created automatically

  // parameters constructor
  Point(double x, double y) {
    this.x = x;
    this.y = y;
  }

// Named Constructor
  Point.origin(double a, double b)
      : x = a,
        y = b;

  final ImmutablePoint originPoint = ImmutablePoint(0, 0);

  //& Methods
  void displayPoint() {
    print("x = ${this.x} y = ${this.y}");
  }

  Point addTwoPoint(Point secondPoint) {
    Point finalPoint = Point(this.x + secondPoint.x, this.y + secondPoint.y);
    return finalPoint;
  }

//* Syntax sugar
  Point operator +(Point point) => Point(this.x + point.x, this.y + point.y);

  //& Override Methods
  // any class extend from "Object" Class 'Basic/ Super Class in dart'

  // @override
  // String toString() {
  //   return "x = ${this.x} y = ${this.y}";
  // }

  //* Syntax sugar
  @override
  String toString() => "x = ${this.x} y = ${this.y}";
}

class ImmutablePoint {
  final double a, b;
  // const constructor
  const ImmutablePoint(this.a, this.b);
  //! Error
  //void setXAxisPoint(double x) => this.a = x;
}
