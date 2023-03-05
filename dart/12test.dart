void main() {
  Future.delayed(const Duration(seconds: 3), () => 100).then((value) {
    print('The value is $value.');
  });
  print('Waiting for a value...');
}
