import 'dart:async';
import 'dart:isolate';

// parallel programming `isolate`
void main() {
  //  Isolate.spawn(
  //    messenger,
  //    "this is from the isolate",
  //  );
  //  print("from main");

  ReceivePort rPort = ReceivePort();
  rPort.listen((data) {
    if (data is String) {
      print(data);
    } else {
      print("Pi is $data");
      rPort.close();
    }
  });
  Isolate.spawn(calculatePI, rPort.sendPort);
}

//void messenger(String message){
//  print("$message");
//}

void calculatePI(SendPort sPort) {
  int iters = 1000000000;
  double s = 1.0;
  double den = 3.0;
  double neg = -1.0;

  for (int i = 0; i < iters; i++) {
    s += (neg * (1 / den));
    den += 2.0;
    neg *= -1.0;
    if (i / iters == 0.25 || i / iters == 0.50 || i / iters == 0.75) {
      sPort.send("${(i / iters * 100)}% complete");
    }
  }

  double pi = 4 * s;

  sPort.send(pi);
}
