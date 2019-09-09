import 'dart:math';
import 'constants.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.passedGender});
  final int height;
  final int weight;
  final int age;
  final Gender passedGender;

  double _bmi;

  double ageFactor() {
    return (age <= kAgeLimitForFactor)
        ? ((kMaxFactor - kMinFactor) / kAgeLimitForFactor) * age + kMinFactor
        : kMaxFactor;
  }

  String calculateBMI() {
    // need height in meters
    _bmi = (passedGender == Gender.male)
        ? (weight / pow(height / 100, 2)) * ageFactor()
        : ((weight * kFemaleWeightCorrection) / pow((height / 100), 2)) *
            ageFactor();
    // convert double into a single decimal place .toStringAsFixed
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= kOverweightBmiThreshold) {
      return 'Overweight';
    } else if (_bmi > kNormalBmiThreshold) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= kOverweightBmiThreshold) {
      return 'You have a higher than normal body weight. Try and exercise more.';
    } else if (_bmi > kNormalBmiThreshold) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
