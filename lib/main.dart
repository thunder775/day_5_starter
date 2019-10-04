import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());

class XyloPhone extends StatelessWidget {
//  Container c1 = Container(
//    width: double.infinity,
//    child: FlatButton(
//        color: Colors.purple.shade300,
//        child: Text('Play Sound'),
//        onPressed: () {
//          AudioCache audioPlayer = AudioCache();
//          audioPlayer.play('note1.wav');
//        }),
//  );
  Expanded c1, c2, c3, c4, c5, c6, c7;

  Expanded generator(Expanded c, Color color, int note) {
    c = Expanded(
      child: Container(
        width: double.infinity,
        child: FlatButton(
            color: color,
            onPressed: () {
              AudioCache audioPlayer = AudioCache();
              audioPlayer.play('note$note.wav');
            }),
      ),
    );

    return c;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                generator(c1, Colors.deepPurpleAccent, 1),
                generator(c2, Colors.indigoAccent, 2),
                generator(c3, Colors.lightBlue, 3),
                generator(c4, Colors.green, 4),
                generator(c5, Colors.yellow, 5),
                generator(c6, Colors.orange, 6),
                generator(c7, Colors.red, 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
