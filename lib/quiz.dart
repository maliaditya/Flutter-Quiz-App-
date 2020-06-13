import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quest;
  final int questIndex;
  final Function ansQuest;

  Quiz({@required this.quest, @required this.ansQuest, @required this.questIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quest[questIndex]['questionText']),
        ...(quest[questIndex]['answers'] as List<Map<String, Object>>).map((answer){
          return Answer(()=>ansQuest(answer['score']),answer['text']);
        }).toList()

      ],
    );
  }
}
