import 'package:flutter/material.dart';
import 'package:flutter_counter/bloc/counter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterBloc counterBloc = CounterBloc();

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
        child: StreamBuilder<int>(
            stream: counterBloc.counterStream,
            initialData: 0,
            builder: (context, snapshot) {
              return Text('${snapshot.data}');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterBloc.incrementar,
        tooltip: 'incrementar',
        child: Icon(Icons.add),
      ),
    );
  }
}
