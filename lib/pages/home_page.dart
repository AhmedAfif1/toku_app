import 'package:flutter/material.dart';
import 'package:toku_app/pages/color_page.dart';
import 'package:toku_app/pages/family_member_page.dart';
import 'package:toku_app/pages/number_page.dart';
import 'package:toku_app/pages/phrase_page.dart';
import 'package:toku_app/widgets/category_item.dart';




class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor: Color(0xff4A332C),
        title: Text('Toku', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          CategoryItem(
            text: 'Numbers',
            color: Color(0xffF89632),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberPage()),
              );
            },
          ),
          CategoryItem(
            text: 'Family Members',
            color: Color(0xff528032),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilyMemberPage()),
              );
            },
          ),
          CategoryItem(
            text: 'Colors',
            color: Color(0xff7D40A2),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorPage()),
              );
            },
          ),
          CategoryItem(
            text: 'Phrases',
            color: Color(0xff47A5CB),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
