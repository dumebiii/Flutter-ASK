import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    );
  }
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text('Ask me anything'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int button = 5;

  void changeButton() {
    setState(() {
      button = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {
          changeButton();
        },
        child: Image.asset(
          'images/ball$button.png',
        ),
      ),
    );
  }
}
