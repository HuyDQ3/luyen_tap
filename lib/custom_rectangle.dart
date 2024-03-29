class CustomRectangle {
  double left, top;

  CustomRectangle(this.left, this.top);

  double get perimeter => (left + top) * 2;
  double get area => left * top;

  void plus() {
    left += top;
  }
}
