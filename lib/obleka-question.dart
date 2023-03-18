import 'package:flutter/material.dart';

class Oblekaquestion extends StatelessWidget{
  String content="";
  Oblekaquestion(this.content);
  @override
  Widget build(BuildContext context)
  {
    return 
    Container(child: 
      Text(content,
      style: TextStyle(
        color: Colors.blue),
    ),
  );
  }
}