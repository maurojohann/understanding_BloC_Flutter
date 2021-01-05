import 'dart:async';

import 'package:flutter_counter/models/counter.dart';

class CounterBloc {
  Counter _counter = Counter();
  StreamController<int> _counterController = StreamController<int>.broadcast();

  Sink get counterSink => _counterController.sink;

  Stream get counterStream => _counterController.stream;

  incrementar() {
    _counter.addCouter();
    counterSink.add(_counter.totalCounter);
  }

  int get total {
    var cont;
    counterStream.listen((cont) {
      cont = _counter.totalCounter;
    });
    return cont;
  }

  void dipose() {
    _counterController.close();
  }
}
