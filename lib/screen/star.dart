import 'package:flutter/material.dart';

class StarScreen extends StatefulWidget {
  const StarScreen({super.key, required this.rating});

  final int rating;

  @override
  State<StarScreen> createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen> {
  Widget star(bool fill) {
    return Icon(Icons.star,
        size: 20, color: fill ? Colors.deepOrange : Colors.black45);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(5, (index) {
      if (index < (widget.rating).round()) {
        return star(true);
      } else {
        return star(false);
      }
    }));
  }
}
