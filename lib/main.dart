import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playNotes(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded playKeys({Color color, int noteNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNotes(noteNumber);
        },
      ),
    );


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playKeys(color:Colors.black,noteNumber:1),
              playKeys(color:Colors.white,noteNumber:2),
              playKeys(color:Colors.black,noteNumber:3),
              playKeys(color:Colors.white,noteNumber:4),
              playKeys(color:Colors.black,noteNumber:5),
              playKeys(color:Colors.white,noteNumber: 6),
              playKeys(color:Colors.black,noteNumber: 7)


            ],
          ),
        ),
      ),
    );
  }
}
