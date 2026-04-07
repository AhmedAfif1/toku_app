import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/color_item.dart';

class ColorPage extends StatelessWidget {
  ColorPage();
  final List<NumberModel> colors = [
    NumberModel(
      jpName: 'kuro',
      engName: 'Black',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    NumberModel(
      jpName: 'chairo',
      engName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/color_brown.wav',
    ),
    NumberModel(
      jpName: 'Hokori   kiiro',
      engName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/color_dusty_yellow.wav',
    ),
    NumberModel(
      jpName: 'giniro',
      engName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/color_gray.wav',
    ),
    NumberModel(
      jpName: 'midori',
      engName: 'Green',
      image: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/color_green.wav',
    ),
    NumberModel(
      jpName: 'aka',
      engName: 'Red',
      image: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/color_red.wav',
    ),
    NumberModel(
      jpName: 'shiro',
      engName: 'White',
      image: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/color_white.wav',
    ),
    NumberModel(
      jpName: 'Hokori   kiiro',
      engName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/color_dusty_yellow.wav',
    ),
    NumberModel(
      jpName: 'chairo',
      engName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/color_brown.wav',
    ),
    NumberModel(
      jpName: 'kuro',
      engName: 'Black',
      image: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/color_black.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff4A332C),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(numC: colors[index]);
        },
      ),
    );
  }
}
