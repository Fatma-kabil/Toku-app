import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                item.enName,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            // play sound
            final player = AudioPlayer();
            player.play(AssetSource(item.sound));
          },
          icon: const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.play_arrow,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
