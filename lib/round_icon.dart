import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIcon({this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white30,
    );
  }
}
