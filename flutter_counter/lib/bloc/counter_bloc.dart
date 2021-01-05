import 'dart:async';

import 'package:flutter_counter/models/counter.dart';

class CounterBloc {
  // Counter _counter = Counter();
  StreamController<int> _counterController = StreamController<int>();
  //StreamController<int> _counterTotalController = StreamController<int>();

  Sink get counterSink => _counterController.sink;

  Stream get counterStream => _counterController.stream;

  int counter = 0;

  incrementar() {
    counter++;
    counterSink.add(counter);
  }

  int get total {
    return counter;
  }

  void dipose() {
    _counterController.close();
  }
}
