import 'package:flutter/material.dart';
import './question.dart';
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
      var quest = ["what\'s your favourite color?",
        "what\'s your favourite animal?"];
      return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(
          children: [
            Question(quest[_questIndex]),
            RaisedButton(child: Text('Answer 1'),
              onPressed: () => print('Answer1 Chosen'),),
            RaisedButton(child: Text('Answer 2'),
              onPressed: (){
              print('Answer 2 chosen');
              },),
            RaisedButton(child: Text('Answer 3'),
              onPressed: _ansQuest,),

          ],
        )
      ),);
    }
}