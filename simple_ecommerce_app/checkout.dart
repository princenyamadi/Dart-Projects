import 'dart:io';

class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final double price;
}

class Item {
  Item({required this.product, this.quantity = 1});

  final Product product;
  final int quantity;

  double get price => quantity * product.price;
}

class Cart {
  // TODO: Items collection
}

// loop
//  prompt: view cart / add item / checkout
//  if selection == add item
//    choose a product
//    add it to the cart
//    print cart
//   else if selection == view cart
//    print cart
//   else if selection == checkout
//    do checkout
//    exit
// end

void main() {
  while (true) {
    stdout.write(
        'What do you want to do? (v)iew items, (a)dd item, (c)hecjout: ');

    final line = stdin.readLineSync();
    if(line == 'a'){
      // TODO: Implement add logic
    }else if(line == 'v'){
      // TODO: Implement view logic
    }else if(line == 'c'){
      // TODO: Implement checkout logic

    }
  }
}
