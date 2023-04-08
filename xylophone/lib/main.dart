import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart' ;

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {

  void play(int num){
    final player=AudioCache();
    player.play('assets_note$num.wav');
  }

  Expanded xylo({required Color color,required int num})
  {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            play(num);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylo(color:Colors.red,num:1),
              xylo(color:Colors.orange,num:2),
              xylo(color:Colors.yellow,num:3),
              xylo(color:Colors.green,num:4),
              xylo(color:Colors.teal,num:5),
              xylo(color:Colors.blue,num:6),
              xylo(color:Colors.purple,num:7),
            ],
          ),
        ),
      ),
    );
  }
}
