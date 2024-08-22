import 'package:flutter/material.dart';
import 'package:taku/Components/item.dart';

import '../models/number.dart';

class FamilyMemberspage extends StatelessWidget {
  const FamilyMemberspage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        enName: 'Grandfather',
        sound: 'sounds/family_members/grand_father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grandmother',
        sound: 'sounds/family_members/grand_mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'Older brother',
        sound: 'sounds/family_members/older_bother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older sister',
        sound: 'sounds/family_members/older_sister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger brother',
        sound: 'sounds/family_members/younger_brohter.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger sister',
        sound: 'sounds/family_members/younger_sister.wav')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white70,
        ),
        backgroundColor: const Color.fromARGB(255, 93, 151, 152),
        title: const Text(
          'Family Members',
          style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
              imagecolor: const Color.fromARGB(255, 205, 235, 216),
              number: numbers[index],
              color: const Color(0xffAAD9BB));
        },
      ),
    );
  }
}
