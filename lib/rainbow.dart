import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class rainbow extends StatefulWidget {
  const rainbow({Key? key}) : super(key: key);

  @override
  State<rainbow> createState() => _rainbowState();
}

class _rainbowState extends State<rainbow>
{
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.setSource(AssetSource('audio/assets$soundNumber.wav'),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text("RAINBOW"),
         ),
      body: Column(
        children: [

          xylophonekey(Colors.green,1),
          xylophonekey(Colors.yellow,2),
          xylophonekey(Colors.orange,3),
          xylophonekey(Colors.red,4),
          xylophonekey(Colors.pink,5),
          xylophonekey(Colors.purple,6),
          xylophonekey(Colors.black26,7),
        ]
      )
    );
  }

  Expanded xylophonekey(Color keycolor , int sound) {
    return Expanded(
          child: Container(
            width: 700,
            height: 200,
            color: keycolor,child: Center(child: TextButton(onPressed: (){playsound(sound);}, child: Text("audio"))

          )
        ),
  );
  }
}

