import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: Text(
                'One',
                textAlign: TextAlign.center,
                ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.amber,
              child: Text(
                'Two',
                textAlign: TextAlign.center,
                ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.green,
              child: Text(
                'Three',
                textAlign: TextAlign.center,
                ),
            ),
          ]
        )
      );
  }
}
