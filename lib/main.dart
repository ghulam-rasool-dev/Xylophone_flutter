import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text('Xylophone'))
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blue.shade900,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note1.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note2.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note3.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note4.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note5.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note6.wav');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  child: FlatButton(
                    onPressed: () {
                      final Player = AudioCache();
                      Player.play('note7.wav');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
