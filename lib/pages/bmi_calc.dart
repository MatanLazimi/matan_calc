// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  double _height = 0.0;
  double _weight = 0.0;
  double _bmi = 0.0;
  String _bmi_message = '';
  // the message at the beginning
  String _message = 'Please enter your height an weight';

  void _calculate() {
    _bmi = _weight/(_height*_height);
    _bmi_message=_bmi.toStringAsPrecision(4);
    if(_bmi>25.0)
      _message='The result is $_bmi_message\nit\'s Overweight result';
    else
      if(_bmi<=18.4)
        _message='The result is $_bmi_message\nit\'s Underweight result';
      else
        _message='The result is $_bmi_message\nit\'s Healthy result';
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text('BMI Calculator'),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
                children: [
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 80.0,
                      width: 320.0,
                      color: Colors.white,
                      child: Center(
                        child: Text(_message,
                           textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text('Height(m)',
                      textAlign: TextAlign.start),
                  TextField(
                    textAlign: TextAlign.center,
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: true),
                    onChanged: (String height){
                      _height=double.parse(height);
                    },
                  ),
                  SizedBox(height: 10.0,),
                  Text('Weight (kg)'),
                  TextField(
                    textAlign: TextAlign.center,
                    keyboardType:
                    TextInputType.numberWithOptions(decimal: true),
                    onChanged: (String weight){
                      _weight=double.parse(weight);
                    },
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    child: Text('Calculate'),
                    onPressed: () {setState((){
                      _calculate();
                    });},

                  )
                ]
            ),
          )
      );
    }
  }
