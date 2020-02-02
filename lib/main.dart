import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneButton(
                color: Colors.red,
                soundNumber: 1,
              ),
              XylophoneButton(
                color: Colors.orange,
                soundNumber: 2,
              ),
              XylophoneButton(
                color: Colors.yellow,
                soundNumber: 3,
              ),
              XylophoneButton(
                color: Colors.greenAccent,
                soundNumber: 4,
              ),
              XylophoneButton(
                color: Colors.green,
                soundNumber: 5,
              ),
              XylophoneButton(
                color: Colors.blue,
                soundNumber: 6,
              ),
              XylophoneButton(
                color: Colors.purple,
                soundNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  final Color color;
  final int soundNumber;

  const XylophoneButton({
    this.color,
    this.soundNumber,
    Key key,
  }) : super(key: key);

  void playSound() {
    final player = AudioCache();
    player.play('note${this.soundNumber}.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: this.color,
        onPressed: () => playSound(),
        child: null,
      ),
    );
  }
}
