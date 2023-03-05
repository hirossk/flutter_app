import 'dart:async';

var controller = StreamController<String>();

void registerListner() {
  controller.stream.listen((val) => print("recieved data: $val"));
}

main() {
  registerListner();
  controller.sink.add("Hello!");
  controller.sink.add("Welcome!");
}
