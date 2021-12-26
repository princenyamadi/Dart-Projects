class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;



  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(covariant Point other) {
    if (other is Point) {
      return x == other.x && y == other.y;
    }
    return false;
  }

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  const list = [1, 2, 5];
  final point = Point(1, 3);
  // print(Point(0, 9) == 'ani'); will not compile because they are not the same type

  print(point.toString());
}
