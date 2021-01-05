import 'dart:async';

import 'package:flutter_counter/models/counter.dart';

class CounterBloc {
  Counter _counter = Counter();
  StreamController<int> _counterController = StreamController<int>();

  Sink get counterSink => _counterController.sink;

  Stream get counterStream => _counterController.stream.asBroadcastStream();

  incrementar() {
    _counter.addCouter();
    counterSink.add(_counter.totalCounter);
  }

  void dipose() {
    _counterController.close();
  }
}
