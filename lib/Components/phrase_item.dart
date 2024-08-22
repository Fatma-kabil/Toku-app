import 'package:flutter/material.dart';

import '../models/number.dart';
import 'item_info.dart';

class PhraseIteem extends StatelessWidget {
  const PhraseIteem({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color: color, height: 90, child: ItemInfo(item: item));
  }
}
