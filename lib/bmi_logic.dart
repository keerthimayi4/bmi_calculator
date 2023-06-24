import 'dart:math';

class BmiLogic {
  BmiLogic({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'overweight';
    } else if (_bmi! > 18.5) {
      return 'normal weight';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Oh no!!You are higher than normal. No worries maintain a diet & exercise daily.\n🏃‍♂️🥕🥦';
    } else if (_bmi! > 18.5) {
      return 'Great! You have normal weight,keep going.\n❤️';
    } else {
      return 'Oops! You are lower than normal.Eat more and stay healthy.\n🍎🍗🥩🍛';
    }
  }
}
