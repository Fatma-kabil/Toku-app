import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});

  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: const EdgeInsets.only(left: 35),
        alignment: Alignment.centerLeft,
        height: 75,
        width: double.infinity,
        child: Text(text!,
            style: const TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
