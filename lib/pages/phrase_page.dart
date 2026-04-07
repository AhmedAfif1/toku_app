import 'package:flutter/material.dart';
import 'package:toku_app/models/ph_model.dart';
import 'package:toku_app/widgets/phrase_item.dart';


class PhrasePage extends StatelessWidget {
  PhrasePage();

  final List<PhModel> phrases = [
    PhModel(
      jpName: 'Kimasu ka?',
      engName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PhModel(
      jpName: 'Wasurenaide onegai!',
      engName: 'Don’t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PhModel(
      jpName: 'Kibun wa dou?',
      engName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PhModel(
      jpName: 'Anime ga daisuki!',
      engName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PhModel(
      jpName: 'Programming ga daisuki!',
      engName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    PhModel(
      jpName: 'Programming wa kantan desu!',
      engName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    PhModel(
      jpName: 'Namae wa nan desu ka?',
      engName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    PhModel(
      jpName: 'Doko e ikimasu ka?',
      engName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    PhModel(
      jpName: 'Hai, ikimasu!',
      engName: 'Yes, I’m coming!',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
    PhModel(
      jpName: 'Kimasu ka?',
      engName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff4A332C),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(phModel: phrases[index]);
        },
      ),
    );
  }
}
