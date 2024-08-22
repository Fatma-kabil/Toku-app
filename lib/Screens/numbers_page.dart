import 'package:flutter/material.dart';
import 'package:taku/Components/item.dart';

import '../models/number.dart';

class Numberspage extends StatelessWidget {
  const Numberspage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3')
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
          'Numbers',
          style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            imagecolor: const Color.fromARGB(255, 191, 223, 223),
            number: numbers[index],
            color: const Color.fromARGB(255, 135, 199, 200),
          );
        },
      ),
    );
  }
}
