var name = 'Voyajer I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg',
};

void main() {
  dynamic moji = 'moji';
  print(moji.runtimeType);
  print(moji is String);
  print(name.runtimeType);
  print(year.runtimeType);
  print(antennaDiameter.runtimeType);
  print(flybyObjects.runtimeType);
  print(image.runtimeType);
}
