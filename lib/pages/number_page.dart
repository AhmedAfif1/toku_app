import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/number_item.dart';

class NumberPage extends StatelessWidget {
  NumberPage();
  List<NumberModel> numbers = [
    NumberModel(
      jpName: 'ichi',
      engName: 'One',
      image: 'assets/images/numbers/number_one.png',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    NumberModel(
      jpName: 'ni',
      engName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
    ),
    NumberModel(
      jpName: 'san',
      engName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
    ),
    NumberModel(
      jpName: 'yon',
      engName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
    ),
    NumberModel(
      jpName: 'go',
      engName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
    ),
    NumberModel(
      jpName: 'roku',
      engName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
    ),
    NumberModel(
      jpName: 'nana',
      engName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
    ),
    NumberModel(
      jpName: 'hachi',
      engName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
    ),
    NumberModel(
      jpName: 'kyuu',
      engName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
    ),
    NumberModel(
      jpName: 'juu',
      engName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff4A332C),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (contxt, indix) {
          return NumberItem(numberModel: numbers[indix]);
        },
      ),
    );
  }
}
