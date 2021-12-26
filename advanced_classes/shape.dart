import 'dart:math';

abstract class Shape {
  double get area;
  const Shape();

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'sqaure':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing side property');
      case 'circle':
        final radius = json['side'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError("invalid or missing radius property");
      default:
        throw UnimplementedError('shape $type not recognized');
    }
  }
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
  final shapesJson = [
    {'type': 'square', 'side': 10.0},
    {'type': 'circle', 'side': 5.0},
  ];

  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printArea);
}
