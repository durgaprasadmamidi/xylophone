import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

void play(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

Widget button(int i, Color c) {
  return Expanded(
    flex: 1,
    child: FlatButton(
        onPressed: () {
          play(i);
        },
        color: c),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              button(1, Colors.purpleAccent),
              button(2, Colors.green),
              button(3, Colors.redAccent),
              button(4, Colors.pinkAccent),
              button(5, Colors.blueGrey),
              button(6, Colors.greenAccent),
              button(7, Colors.indigo),
            ],
          ),
        ),
      ),
    );
  }
}
