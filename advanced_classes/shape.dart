import 'dart:math';

abstract class Shape {
  double get area;
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final square = Square(10);
  print(square.area);
  printArea(square);

  final circle = Circle(5);
  print(circle);

  final shapes = [Square(2), Square(3)];

  shapes.forEach((shape) => printArea(shape));
}
