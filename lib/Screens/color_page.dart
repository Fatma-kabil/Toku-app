import 'package:flutter/material.dart';
import 'package:taku/Components/item.dart';

import '../models/number.dart';

class Colorpage extends StatelessWidget {
  const Colorpage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
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
          'Colors',
          style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
              imagecolor: const Color.fromARGB(255, 222, 242, 207),
              number: numbers[index],
              color: const Color.fromARGB(255, 205, 241, 177));
        },
      ),
    );
  }
}
