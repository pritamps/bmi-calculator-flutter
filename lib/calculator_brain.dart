import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMIText() {
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    }
    return "Underweight";
  }

  String getInterpreation() {
    if (_bmi >= 25) {
      return "Take care and reduce your weight.";
    } else if (_bmi >= 18.5) {
      return "Good job. You be healthy!";
    }
    return "Eat more, gain weight. be happy!";
  }
}
