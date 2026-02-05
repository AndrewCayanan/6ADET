import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App')),
        body: Center(child: Text('Welcome to Flutter! $counter')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            print('Button Pressed $counter times');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
