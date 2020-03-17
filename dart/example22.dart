// asynchronous programming
import 'dart:async';

void main() {
  print("this is synchronous");
  print("everything is executing in sync");
  // read a file or access the internet
  future().then(
          (value) => print(value),
  );
  // scheduleMicrotask have higher priority
  // among the events
  scheduleMicrotask(
      () => print("This is a microtask"),
  );
  future().then((v) => print(v));
  event1().then((v) => print(v));
  event2().then((v) => print(v));

  print("now the program ends");
}

Future future() async {
  Completer completer = Completer();

  Future.delayed(Duration (seconds: 2), () {
    completer.complete("delayed call");
  }); // Future delayed
  return completer.future;
}

Future<String> event1() async {
  return Future.value("This is a future event");
}

Future<String> event2() async {
  return Future.value("This is another future event");
}
