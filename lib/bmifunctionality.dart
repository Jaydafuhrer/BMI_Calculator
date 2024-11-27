import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  CalculatorBrain({required this.weight,required this.height});
  final int height;
  final int weight;
  late double _bmi;

  String CalculateBmi(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi>=25){return 'OVERWEIGHT';}
    else if(_bmi>15){return 'NORMAL';}
    else {return 'UNDERWEIGHT';}
  }
  String getInterpretation(){
    if (_bmi>=25){return 'YOU NEED TO WATCH YOUR WEIGHT';}
    else if (_bmi>15){return 'YOU ARE IN GOOD SHAPE';}
    else {return 'YOU NEED TO IMPROVE YOUR PROTEIN INTAKE';}

  }
}