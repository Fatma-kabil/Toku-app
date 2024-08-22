import 'package:flutter/material.dart';

import '../models/number.dart';
import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number, required this.color, required this.imagecolor});

  final ItemModel number;
  final Color color;
  final Color imagecolor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: color,
        child: Row(
          children: [
            Container(color: imagecolor, child: Image.asset(number.image!)),
            Expanded(child: ItemInfo(item: number)),
          ],
        ));
  }
}
