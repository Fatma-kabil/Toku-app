import 'package:flutter/material.dart';
import 'package:taku/Screens/family_members_page.dart';
import 'package:taku/Screens/numbers_page.dart';
import 'package:taku/Screens/phrases_page.dart';

import '../Components/category_item.dart';
import 'color_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 23),
        ),
        backgroundColor: const Color.fromARGB(255, 93, 151, 152),
      ),
      body: Column(
        children: [
          Category(
              text: 'Numbers',
              color: const Color(0xFF80BcBD),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Numberspage();
                  },
                ));
              }),
          Category(
              text: 'Family Members',
              color: const Color(0xffAAD9BB),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const FamilyMemberspage();
                  },
                ));
              }),
          Category(
              text: 'Colors',
              color: const Color.fromARGB(255, 205, 241, 177),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Colorpage();
                  },
                ));
              }),
          Category(
              text: 'Phrases',
              color: const Color.fromARGB(255, 233, 231, 170),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Phrasespage();
                  },
                ));
              }),
        ],
      ),
    );
  }
}
