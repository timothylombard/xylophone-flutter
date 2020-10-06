import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int soundNumber) {
      final player  = AudioCache();
      player.play('note$soundNumber.wav');
    }


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
              FlatButton(
                onPressed: () {
                  playSound(1);
        },
                child: Card (
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 20.0),

                  child: ListTile(
                    title: Text(
                      "do",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                child: Card (
                  color: Colors.orange,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 30.0),

                  child: ListTile(
                    title: Text(
                      "re",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                child: Card (
                  color: Colors.yellow,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 40.0),

                  child: ListTile(
                    title: Text(
                      "mi",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                child: Card (
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 50.0),

                  child: ListTile(
                    title: Text(
                      "fa",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                child: Card (
                  color: Colors.blue,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 60.0),

                  child: ListTile(
                    title: Text(
                      "sol",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                child: Card (
                  color: Colors.indigo,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 70.0),

                  child: ListTile(
                    title: Text(
                      "la",
                    ),
                  ),

                ),
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                child: Card (
                  color: Colors.purple,
                  margin: EdgeInsets.symmetric(vertical: 10.0,
                      horizontal: 80.0),

                  child: ListTile(
                    title: Text(
                      "ti",
                    ),
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
