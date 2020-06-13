import 'package:flutter/material.dart';
import 'package:flutterapp/result.dart';

import './quiz.dart';
import './result.dart';

void main(){
runApp(MyApp());

}
class MyApp extends StatefulWidget{

      @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{

    final _quest = const [
      {
        "questionText":"what\'s your favourite color?",
        'answers':[
        {'text':'Black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':3},
        {'text':'Blue','score': 1}
        ],
      },

      {
        "questionText":"what\'s your favourite Animal?",
        'answers':[
          {'text':'Dog','score':10},
        {'text':'Cat','score':5},
        {'text':'Tiger','score':3},
        {'text':'Lion','score': 1}
        ],
      },

      {
        "questionText":"what\'s your favourite FastFood?",
        'answers':[
          {'text':'Burger','score':10},
        {'text':'Pizza','score':5},
        {'text':'Vadapav','score':3},
        {'text':'Panipuri','score': 1}
        ],
      }


    ];

    var _questIndex = 0;
    var _totalScore =0;

    void _resetQuiz(){
      setState(() {
        _questIndex = 0;
     _totalScore =0;
      });
      
    }
    void _ansQuest(int score){
     
     _totalScore += score;

      if (_questIndex <  _quest.length){
        print('we have more quest');
      }
      setState(() {
        _questIndex  = _questIndex + 1;
      });
      
      print(_questIndex);
    }

    @override
    Widget  build(BuildContext context){

      return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('Quizy'),),
        body: _questIndex <  _quest.length
            ? Quiz(ansQuest: _ansQuest, questIndex:_questIndex, quest:_quest)
            : Result(_totalScore, _resetQuiz)
      ),
      );
    }
}