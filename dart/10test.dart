void main() {
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  //省略形
  list.forEach((item) => print('${list.indexOf(item)}: $item'));
}
