Future<String> fetchUserOrder() => Future.delayed(
      Duration(seconds: 2),
      () => throw Exception('Out of milk'),
    );

Future<String> fetchUserOrder2() => Future.value('Expresso');
Future<String> fetchUserOrder3() => Future.error(Exception('Out of Milk'));


void main() async {
  print('Program started');
  // fetchUserOrder()
  //     .then((order) => print('Order is ready: $order'))
  //     .catchError((error) => print(error))
  //     .whenComplete(() => print('done'));

  try {
    final order = await fetchUserOrder();
    print(order);

    final order2 = await fetchUserOrder2();
    print(order2);

    final order3 = await fetchUserOrder3();
    print(order3);


  } catch (e) {
    print(e);
  }
}
