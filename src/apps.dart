import 'package:flutter/material.dart';

class Appstate extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<Appstate> {
  Color get countercolor =>
    (counter < 0 || counter > 10) ? Colors.red : Colors.green;
  int counter = 0;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter App')),
        body: Container(
          child: Align(alignment: Alignment.center, child: Text('Button Clicked Times: $counter', style: TextStyle(fontSize: 100, color: countercolor)))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
            print('Button Pressed $counter times');
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}