import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClassicCalc extends StatefulWidget {
  const ClassicCalc({Key? key}) : super(key: key);

  @override
  State<ClassicCalc> createState() => _ClassicCalcState();
}

class _ClassicCalcState extends State<ClassicCalc> {
  String screen = '0';
  int param1 = 0;
  bool param1_bool=false;
  int param2 = 0;
  bool param2_bool=false;
  String op = '';
  bool op_bool=false;

  void pressNum(int pressInt){
    setState((){
      if(!param1_bool && !op_bool){
        param1_bool=true;
        param1=pressInt;
        screen=pressInt.toString();
      }
      else
        if(param1_bool && !op_bool){
          param1*=10;
          param1+=pressInt;
          screen=param1.toString();
        }
        else
          if(!param2_bool && op_bool){
            param2_bool=true;
            param2=pressInt;
            screen=pressInt.toString();
          }
          else
            if(param2_bool && op_bool){
              param2*=10;
              param2+=pressInt;
              screen=param2.toString();
            }
            else
              screen='Error';
            });
  }

  void pressOperator(String pressOp){
    setState((){
      if(!op_bool && param1_bool == true){
        op_bool=true;
        op=pressOp;
      }
      else
        screen='Error';
    });
  }

  int play_calc() {
      switch(op){
        case '+':
          {
            return param1 + param2;
          }
          case '-':
           {
             return param1 - param2;
           }
           case '/':
             {
               return param1 ~/ param2;
             }
             case '*':
               {
                 return param1 * param2;
               }
               default:{
                 screen='Error';
                 return 0;
               }

    }
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),
              Container(
                alignment: Alignment.center,
                height: 80.0,
                width: 320.0,
                color: Colors.white,
                child: Center(
                  child: Text(screen,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0
                     ),
                   ),
                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: (){
                      setState((){
                        screen='0';
                        param2_bool=false;
                        param1_bool=false;
                        op_bool=false;
                        op='';
                      });
                    },
                    child: Text('C'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){
                      pressOperator('/');
                    });},
                    child: Text('/'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){
                      pressOperator('*');
                    });},
                    child: Text('*'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){
                      pressOperator('-');
                    });},
                    child: Text('-'),
                  ),
                ],
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: (){setState((){pressNum(7);});},
                child: Text('7'),
              ),
              SizedBox(width: 5.0),
              RaisedButton(
                onPressed: (){setState((){pressNum(8);});},
                child: Text('8'),
              ),
              SizedBox(width: 5.0),
              RaisedButton(
                onPressed: (){setState((){pressNum(9);});},
                child: Text('9'),
              ),
              SizedBox(width: 5.0),
              RaisedButton(
                onPressed: (){setState((){
                  pressOperator('+');
                });},
                child: Text('+'),
                ),
            ],
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: (){setState((){pressNum(4);});},
                    child: Text('4'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){pressNum(5);});},
                    child: Text('5'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){pressNum(6);});},
                    child: Text('6'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){
                      if(param1_bool&&param2_bool&&op_bool){
                        param1=play_calc();
                        screen=param1.toString();
                        param2_bool=false;
                        op_bool=false;
                        op='';
                      }
                      else{
                        screen='Error';
                      }
                    });},
                    child: Text('='),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: (){setState((){pressNum(1);});},
                    child: Text('1'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){pressNum(2);});},
                    child: Text('2'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){pressNum(3);});},
                    child: Text('3'),
                  ),
                  SizedBox(width: 5.0),
                  RaisedButton(
                    onPressed: (){setState((){pressNum(0);});},
                    child: Text('0'),
                  ),
                ],
              ),
        ]
      ),
    )
    ),
    );
  }
}
