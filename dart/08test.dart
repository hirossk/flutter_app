var _nobleGases = ['ヘリウム', 'ネオン', 'アルゴン'];

//bool isNoble(int atomicNumber) {
//  return _nobleGases[atomicNumber] != null;
//}

bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

//戻り値のない関数
void doSomething(int x, int y) {
  print(x * y);
}

main() {
  print(isNoble(1));
}
