import 'package:flutter/material.dart';
import 'obleka-question.dart';
import 'answer.dart';
void main() {
  runApp(  MyHomePage());
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   void buttonfunc() {
    setState((){
          indeks+=1;
    });
  }
  var prasanja=[{'prasanje' : "Choose accessories:",
    'ans' : [
      'Bracelets', 'Watches', 'Hats'
      ]},
    {'prasanje' : "Select hat color:",
    'ans' : [
      'black', 'pink', 'white'
      ]},
    {'prasanje' : "Select style:",
    'ans' : [
      'Elegant', 'Classic style', 'Retro style'
      ]},
    {'prasanje' : "Select size:",
    'ans' : [
      's', 'm', 'l'
      ]}];
  var indeks=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Clothes Application"),
        ),
        body: Column(
          children: [
            Oblekaquestion(prasanja[indeks]['prasanje'] as String),
            ...(prasanja[indeks]['ans'] as List<String>).map((ans) {
              return answer(buttonfunc, ans);
            }),
          ],
        ),
      )
    );
  }
}

