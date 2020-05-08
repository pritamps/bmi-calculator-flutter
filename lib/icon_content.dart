import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;

  IconContent({@required this.label, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(this.icon, size: 80),
        SizedBox(height: 15),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
