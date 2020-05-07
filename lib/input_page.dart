import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: new ReusableCard(backgroundColour: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: new ReusableCard(backgroundColour: Color(0xFF1D1E33)),
              ),
            ],
          )),
          Expanded(
            child: new ReusableCard(backgroundColour: Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                  child: new ReusableCard(backgroundColour: Color(0xFF1D1E33))),
              Expanded(
                  child: new ReusableCard(backgroundColour: Color(0xFF1D1E33))),
            ],
          )),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.backgroundColour});
  final Color backgroundColour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColour,
      ),
    );
  }
}
