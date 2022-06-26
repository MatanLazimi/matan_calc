import 'package:flutter/material.dart';
import 'package:matan_calc/pages/bmi_calc.dart';
import 'package:matan_calc/pages/classic_calc.dart';
import 'package:matan_calc/pages/scientific_calc.dart';
import 'package:matan_calc/pages/welcome.dart';
import 'package:matan_calc/pages/choose_calc.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/welcome',
    routes: {
      '/welcome': (context) => Welcome(),
      '/choose_calc': (context) => ChooseCalc(),
      '/classic_calc': (context) => ClassicCalc(),
      '/bmi_calc': (context) => BmiCalc(),
      '/scientific_calc': (context) => ScientificCalc(),
    }
  ));
}

