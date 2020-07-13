import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ballNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        elevation: 8.0,
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
                print('I got pressed = $ballNumber');
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}
