import "package:flutter/material.dart";



class Answer extends StatelessWidget{
  final Function outputAnswer;
  final String s;
  Answer(this.outputAnswer,this.s);
    @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.black38,   
        textColor: Colors.white,     
        child:Text(s),
        onPressed: outputAnswer,
        )
      ,);
  }
  
}