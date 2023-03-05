bool topLevel = true;
void main() {
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
      // ここでtopLevelにアクセス可能
      print(topLevel);
    }
  }
  // ここでinsideFunctionはアクセス不可
}
