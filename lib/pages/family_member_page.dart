import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/family_item.dart';



class FamilyMemberPage extends StatelessWidget {
  FamilyMemberPage();

  final List<NumberModel> familyMembers = [
    NumberModel(
      jpName: 'chichi',
      engName: 'Father',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/family_father.wav',
    ),
    NumberModel(
      jpName: 'haha',
      engName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/family_mother.wav',
    ),
    NumberModel(
      jpName: 'ojiisan',
      engName: 'Grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/family_grandfather.wav',
    ),
    NumberModel(
      jpName: 'obaasan',
      engName: 'Grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/family_grandmother.wav',
    ),
    NumberModel(
      jpName: 'musuko',
      engName: 'Son',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/family_son.wav',
    ),
    NumberModel(
      jpName: 'musume',
      engName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/family_daughter.wav',
    ),
    NumberModel(
      jpName: 'ani',
      engName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/family_older_brother.wav',
    ),
    NumberModel(
      jpName: 'ane',
      engName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/family_older_sister.wav',
    ),
    NumberModel(
      jpName: 'otouto',
      engName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/family_younger_brother.wav',
    ),
    NumberModel(
      jpName: 'imouto',
      engName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/family_younger_sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff4A332C),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return FamilyItem(numM: familyMembers[index]);
        },
      ),
    );
  }
}
