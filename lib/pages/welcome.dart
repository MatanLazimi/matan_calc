// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'classic_calc.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[400],
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100.0),
              Text('Welcome\nTo\nMy Calc',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.blueAccent,
                  letterSpacing: 2.0,
                  fontFamily: 'new_family',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              ),
              SizedBox(height: 40.0),
              FloatingActionButton(
                onPressed:() {
                  Navigator.pushNamed(context,'/choose_calc');
                },
                backgroundColor: Colors.blueAccent,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white
                      ),
                      Text(
                        'Start',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ]
                ),
              ),
              SizedBox(height: 100.0),
              Text('Made by Matan Lazimi ©',
                style: TextStyle(
                  color:Colors.blueAccent,
                  decoration: TextDecoration.none,
                  fontSize: 16.0
                ),
              )
            ],
          ),
        ),
      );
  }
}
