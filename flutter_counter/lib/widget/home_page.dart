import 'package:flutter/material.dart';
import 'package:flutter_counter/models/counter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Counter counter = Counter();

  void incrementar() {
    setState(() {
      counter.addCouter();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build()');
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: kToolbarHeight,
          child: Row(
            children: [
              Image.asset('images/logo.jpg'),
              SizedBox(
                width: 10,
              ),
              Text('Counter'),
            ],
          ),
        ),
        toolbarHeight: kToolbarHeight,
      ),
      body: Center(
        child: Text(counter.totalCounter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        tooltip: 'incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}
