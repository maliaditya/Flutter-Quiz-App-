import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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

    var _questIndex = 0;
    void _ansQuest(){
      setState(() {
        _questIndex  = _questIndex + 1;
      });
      
      print(_questIndex);
    }

    @override
    Widget  build(BuildContext context){
      var quest = [
        {
          "questionText":"what\'s your favourite color?",
          'answers':['Black','Red','Green','Blue']
          },

         {
          "questionText":"what\'s your favourite Animal?",
          'answers':['Tiger','Lion','Wolf','Dog']
          },

         {
          "questionText":"what\'s your favourite FastFood?",
          'answers':['Pizza','Burger','Vadapav','Panipuri']
          }
        
        
        ];
      return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('Quizy'),),
        body: Column(
          children: [
            Question(quest[_questIndex]['questionText']),
            ...(quest[_questIndex]['answers'] as List<String>).map((answer){
              return Answer(_ansQuest,answer);
            }).toList()

          ],
        )
      ),);
    }
}