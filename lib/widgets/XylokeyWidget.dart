import 'package:flutter/material.dart';

class XylokeyWidget extends StatelessWidget {
  final String title;
  final Function onPressed;
  final double horizontalInset;
  final Color color;

  const XylokeyWidget({
    Key key,
    this.title,
    this.onPressed,
    this.horizontalInset,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Card(
        color: color,
        margin: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: horizontalInset,
        ),
        child: ListTile(
          title: Text(title),
        ),
      ),
    );
  }
}
