import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  "BMI here",
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              backgroundColour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(bmiResults, style: kBMIstyle),
                  Text(interpretation, style: kBodyStyle)
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            buttonTitle: "RECALCULATE",
          ),
        ],
      ),
    );
  }
}
