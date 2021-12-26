class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('sleep');
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void bark() => print('bark');
  @override
  // void sleep() => print('dog sleep');
  void sleep() {
    super.sleep();
    print('sleep some more');
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print('mooo');
}

class cleverDog extends Dog {
  cleverDog({required int age}) : super(age: age);
  void catchBall() => print('catch');
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();
  final dog = Dog(age: 10);
  dog.bark();
  dog.sleep();
}
