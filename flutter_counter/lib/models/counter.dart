class Counter {
  int _counter = 0;

  addCouter() {
    _counter++;
    print(_counter);
  }

  int get totalCounter {
    return _counter;
  }
}
