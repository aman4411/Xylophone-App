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
    Expanded buildKey(
        {Color color1, Color color2, Color color3, int soundNumber}) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: <Color>[color1, color2, color3])),
          child: FlatButton(
            child: null,
            // color: keyColor,
            onPressed: () {
              playSound(soundNumber);
            },
          ),
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
              buildKey(
                  color1: Colors.deepPurple,
                  color2: Colors.deepPurple[300],
                  color3: Colors.deepPurple[100],
                  soundNumber: 5),
              buildKey(
                  color1: Colors.red,
                  color2: Colors.red[300],
                  color3: Colors.red[100],
                  soundNumber: 2),
              buildKey(
                  color1: Colors.blue[600],
                  color2: Colors.blue[300],
                  color3: Colors.blue[100],
                  soundNumber: 1),
              buildKey(
                  color1: Colors.green,
                  color2: Colors.green[300],
                  color3: Colors.green[100],
                  soundNumber: 3),
              buildKey(
                  color1: Colors.yellow,
                  color2: Colors.yellow[300],
                  color3: Colors.yellow[100],
                  soundNumber: 4),
              buildKey(
                  color1: Colors.pink,
                  color2: Colors.pink[300],
                  color3: Colors.pink[100],
                  soundNumber: 6),
              buildKey(
                  color1: Colors.blueGrey,
                  color2: Colors.blueGrey[300],
                  color3: Colors.blueGrey[100],
                  soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
