void main() {
  final sum = [1, 2, 5].sum();

  double sum1 = [1.0, 2.0, 3.0].sum();
}

extension IterableX<T extends num> on Iterable<T> {
  T sum() => reduce((value, element) => (value + element) as T);
}
