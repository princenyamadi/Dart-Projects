abstract class Widget {}

class Text extends Widget {
  Text(this.text);
  final String text;
}

class Button extends Widget {
  final Widget child;
  final void Function()? onPressed;

  Button({required this.child, this.onPressed});
}

void main() {
  final button = Button(
    child: Text('Hello'),
    onPressed: () => print('button pressed!'),
  );
}
