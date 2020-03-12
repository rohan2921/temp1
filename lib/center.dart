import 'package:flutter/material.dart';
class Result extends StatelessWidget{
  final int result;
  final Function resetQuiz;
  Result(this.result,this.resetQuiz);
  String get resultText{
    String x;
    if(result<=21){
       x="You are bad";
    }else if(result<=28){
      String x="You are OK";
    }else if(result<=29){
      x="You are good";
    }else{
      x="You are excellent";
    }
    return x;
  }
  
  @override
  Widget build(BuildContext context) {
   
    return Center(
      child:Column(
        children: <Widget>[
          Text(resultText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: resetQuiz, child: Text("Reset Quiz"))
        ],
      ),
    );
  }

  
}