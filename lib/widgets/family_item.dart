import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';


class FamilyItem extends StatelessWidget {
  const FamilyItem({ required this.numM});
  final NumberModel numM;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff527D31),
      child: Row(
        children: [
          Container(color: Color(0xffFFF4DB), child: Image.asset(numM.image)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numM.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  numM.engName,
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
                  await player.play(AssetSource(numM.sound));
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
