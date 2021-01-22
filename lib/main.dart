import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playsound(int n) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio("assets/note$n.wav"),
    );
  }
  Widget buildkey({int n, Color c}) {
    return Expanded(
      child: Container(
        color: c,
        child: FlatButton(
          onPressed: () {
            playsound(n);
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blueAccent,
      title: 'Xylophone',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Center(child: Text('Xylophone'))),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildkey(n: 1, c: Colors.purple),
              buildkey(n: 2, c: Colors.red),
              buildkey(n: 3, c: Colors.teal),
              buildkey(n: 4, c: Colors.amber),
              buildkey(n: 5, c: Colors.brown),
              buildkey(n: 6, c: Colors.cyan),
              buildkey(n: 7, c: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
