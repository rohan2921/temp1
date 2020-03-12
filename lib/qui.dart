import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz  extends StatelessWidget {
  final Function outputAnswer;
  final List<Map<String,Object>> l;
  final index;
  Quiz({
    @required this.outputAnswer,
    @required this.l,
    @required this.index
    }
    );
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
        Questions(l[index]["question"]),
        ...(l[index]["answer"] as List<Map<String,Object>>).map((f){
          return Answer(()=>outputAnswer(f["score"]),f["text"]);
        }).toList()
      ], );
  }
}