import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[700],
          title: Center(child: Text('ASK ME ANYTHING')),
        ),
        body: magicBall(),
      ),
    ),
  );
}

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  // AudioCache audioCache = AudioCache();
  int ballnumber = 1;
  void changeNumber() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              changeNumber();
              // audioCache.load('Tada.mp3');
              // audioCache.play('Tada.mp3');
            },
            child: Image.asset('images/ball$ballnumber.png'),
          ),
        ),
      ],
    );
  }
}
