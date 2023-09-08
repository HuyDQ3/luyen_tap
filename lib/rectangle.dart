class Rectangle {
  double left, top;

  Rectangle(this.left, this.top);

  double get perimeter => (left + top) * 2;
  double get area => left * top;
}
