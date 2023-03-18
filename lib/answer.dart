import 'package:flutter/material.dart';

class answer extends StatelessWidget{
  String content="";
  VoidCallback functnew;
  answer(this.functnew, this.content);
  @override
  Widget build(BuildContext context)
  {
    return Container(
            margin: EdgeInsets.all(5),
            child: ElevatedButton(onPressed: functnew, child: Text(
        style: TextStyle(
                  color: Colors.red,
                  ),content),
                  style: ElevatedButton.styleFrom( 
                  primary: Colors.green
                  )),
    );
  }
}