import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:xylophone/models/XyloKey.dart';
import 'package:xylophone/widgets/XylokeyWidget.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int soundNumber) {
      final player  = AudioCache();
      player.play('note$soundNumber.wav');
    }


  // List<XyloKey> generateKeys() {
  //   var keys = new List(8);
  //   for (var  i = 0; i < 8; i++) {
  //  }
  // }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("PlayMe"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylokeyWidget(
                onPressed: () => playSound(1),
                color: Colors.red,
                horizontalInset: 20.0,
                  title: "do",
              ),


              XylokeyWidget(
                onPressed: () => playSound(2),
                color: Colors.orange,
                horizontalInset: 30.0,
                  title: "re",
              ),


              XylokeyWidget(
                onPressed: () => playSound(3),
                color: Colors.yellow,
                horizontalInset: 40.0,
                  title: "me",
              ),


              XylokeyWidget(
                onPressed: () => playSound(4),
                color: Colors.green,
                horizontalInset: 50.0,
                  title: "fa",
              ),


              XylokeyWidget(
                onPressed: () => playSound(5),
                color: Colors.blue,
                horizontalInset: 60.0,
                  title: "sol",
              ),


              XylokeyWidget(
                onPressed: () => playSound(6),
                color: Colors.indigo,
                horizontalInset: 70.0,
                  title: "la",
              ),


              XylokeyWidget(
                onPressed: () => playSound(7),
                color: Colors.purple,
                horizontalInset: 80.0,
                  title: "ti",
              ),

              XylokeyWidget(
                onPressed: () => playSound(1),
                color: Colors.red,
                horizontalInset: 90.0,
                title: "do",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
