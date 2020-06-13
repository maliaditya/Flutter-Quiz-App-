import 'package:flutter/material.dart';


class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

   Result(this.resultScore, this.resetHandler);

  String get resutPhrase{

    var resultText;

    if (resultScore <= 8 ){
        resultText = "You are awesome!";
    }
    else if(resultScore <= 12){
      resultText = 'Preety likeable!';
    }
    else if(resultScore <= 16){
      resultText = 'You are .... Strange?!';
    }
    else{
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
           Text(resutPhrase,
      style:TextStyle(fontSize:36,fontWeight: FontWeight.bold ,),
      textAlign: TextAlign.center,
        ),
      FlatButton(child: Text('Reset Quiz'),
      textColor: Colors.blue,
      
      onPressed: resetHandler ,)
        ],
      ) 
     
    );
  }
}