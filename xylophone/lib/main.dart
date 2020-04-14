import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //play sound function
    void playSound(int soundNumber) {
      final player = new AudioCache();
      player.play('note$soundNumber.wav');
    }

    //build sound keys function
    Expanded buildKey({Color keyColor, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          child: null,
          color: keyColor,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.lightBlue, soundNumber: 1),
              buildKey(keyColor: Colors.lime, soundNumber: 2),
              buildKey(keyColor: Colors.pinkAccent, soundNumber: 3),
              buildKey(keyColor: Colors.lightGreen, soundNumber: 4),
              buildKey(keyColor: Colors.yellow, soundNumber: 5),
              buildKey(keyColor: Colors.orange, soundNumber: 6),
              buildKey(keyColor: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
