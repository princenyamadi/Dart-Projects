Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumStream2(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
  final stream2 = await countStream(4);
  final sum = await sumStream(stream2);

  print('Sum: $sum');
}
