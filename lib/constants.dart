import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

const kBottomContainerHeight = 70.0;
const kInactiveCardColor = Color(0xFF111328);
const kActiveCardColor = Color(0xFF1D1E33);
const kBottomContainerColor = Color(0xFFEB1555);

const kMaxFactor = 1.0;
const kMinFactor = 0.9;
const kAgeLimitForFactor = 40;
const kFemaleWeightCorrection = 1.2;
const kOverweightBmiThreshold = 25.0;
const kNormalBmiThreshold = 18.5;

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 80.0,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
