import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XyloKey {
  final String title;
  final Function onPressed;
  final double horizontalInset;
  final Color color;
  final int soundNumber;

  XyloKey(
    this.title,
    this.onPressed,
    this.horizontalInset,
    this.color,
    this.soundNumber,
  );

  void playSound() {
    final player  = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
