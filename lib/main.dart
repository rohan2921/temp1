import 'package:app_one/answers.dart';
import 'package:app_one/qui.dart';
import 'package:flutter/material.dart';
import './qui.dart';
import './center.dart';
void main(){
    runApp(MyApp());
} 
class MyApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
     return MyAppState();
  }

}
class MyAppState extends State<MyApp>{
 final   _l= const [
      {
        "question":"What\'s your favourite animal..?",
        "answer":[
          {"text":"Dog","score":10},{"text":"Cat","score":5},{"text":"Rabbit","score":9},]
      },
      {
        "question":"What\'s your favourite color..?",
        "answer":[{"text":"White","score":10},{"text":"Black","score":10},{"text":"Blue","score":8},]
      },{
        "question":"What\'s your facvourite moive..?",
        "answer":[{"text":"Narnia","score":10},{"text":"Avengers","score":8},{"text":"Avatar","score":9},]
      },
    ];
  var _index=0;
  var _score=0;
  void _outputAnswer(int x){
    _score+=x;
    setState(() {
      _index+=1;
    });

  }
  void _resetQuiz(){
    setState((){
    _index=0;
    _score=0;
    });
  }
    @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Home'),backgroundColor: Colors.lightGreenAccent,),
      body: (_index<_l.length)? Quiz(outputAnswer:_outputAnswer, l:_l, index :_index): Result(_score,_resetQuiz),
          
    ),);
  }
}