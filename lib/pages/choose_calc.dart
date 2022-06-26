// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ChooseCalc extends StatelessWidget {
  const ChooseCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: Text('Calculator Menu'),
          centerTitle: true,
        backgroundColor: Colors.grey
      ),
      body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/classic_calc');
                        },
                        child: Image.asset('lib/assets/simple_calc.jpg',
                          width: 110.0,
                          height: 140.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/bmi_calc');
                        },
                        child: Image.asset('lib/assets/bmi_calc.jpg',
                          width: 110.0,
                          height: 140.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pushNamed(context,'/scientific_calc');
                        },
                        child: Image.asset('lib/assets/scientific_calc.jpg',
                          width: 110.0,
                          height: 180.0,
                        ),
                      ),
                    ),
                  ]
        ),
                Column(
                  children: [
                    SizedBox(height: 100.0,),
                    Text('Simple'),
                    SizedBox(height: 160.0,),
                    Text('BMI'),
                    SizedBox(height: 190.0,),
                    Text('Scientific'),
                  ],
                )
              ],
            ),
            ),
          ),
        );
  }
}
