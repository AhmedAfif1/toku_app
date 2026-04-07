import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';



class ColorItem extends StatelessWidget {
  const ColorItem({ required this.numC});
  final NumberModel numC;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff7D40A2),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DB), child: Image.asset(numC.image)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numC.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  numC.engName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () async{
                final player = AudioPlayer();
                try {
                  await player.play(AssetSource(numC.sound));
                } catch (e) {
                  print('Error playing sound: $e');
                }
              },
              icon: Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
