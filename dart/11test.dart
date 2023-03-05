void main() {
  var a;
  var b;
  a ??= 'hello';
  print(a);
  void message([String text = 'world']) {
    print(text);
  }

  b ?? message();
}
