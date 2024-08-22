import 'package:flutter/material.dart';

import '../Components/phrase_item.dart';
import '../models/number.dart';

class Phrasespage extends StatelessWidget {
  const Phrasespage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
        jpName: 'Are you coming?',
        enName: 'Kimasu ka',
        sound: 'sounds/phrases/are_you_coming.wav'),
    ItemModel(
        jpName: 'Do not forget to subscribe',
        enName: 'Wasurezu ni kōdoku shite kudasai',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    ItemModel(
        jpName: 'How are you feeling ?',
        enName: 'Go kibun wa ikagadesu ka',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ItemModel(
        jpName: 'I love anime',
        enName: 'Watashi wa anime ga daisukidesu',
        sound: 'sounds/phrases/i_love_anime.wav'),
    ItemModel(
        jpName: 'I love programming',
        enName: 'Puroguramingu ga daisukidesu',
        sound: 'sounds/phrases/i_love_programming.wav'),
    ItemModel(
        jpName: 'Programming is easy',
        enName: 'Puroguramingu wa kantandesu',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    ItemModel(
        jpName: 'What is your name ?',
        enName: 'Anata no namae wa nandesuka',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    ItemModel(
        jpName: 'Where are you going ?',
        enName: 'Doko ni iku no',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    ItemModel(
        jpName: 'Yes I am coming',
        enName: 'Hai, kimasu',
        sound: 'sounds/phrases/yes_im_coming.wav')
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
          'Phrases',
          style: TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return PhraseIteem(
              item: numbers[index], color: const Color.fromARGB(255, 233, 231, 170));
        },
      ),
    );
  }
}
