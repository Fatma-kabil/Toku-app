import 'package:flutter/material.dart';

import '../models/number.dart';
import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color});

  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: color,
        child: Row(
          children: [
            Container(
                color: const Color.fromARGB(255, 219, 228, 228),
                child: Image.asset(number.image!)),
            Expanded(child: ItemInfo(item: number)),
          ],
        ));
  }
}
