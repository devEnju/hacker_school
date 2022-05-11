import 'package:flutter/material.dart' hide Element;

import '../models/player.dart';

class ChoiceText extends StatelessWidget {
  const ChoiceText(
    this.hand, {
    Key? key,
  }) : super(key: key);

  final Hand? hand;

  @override
  Widget build(BuildContext context) {
    if (hand != null) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/${hand!.name}.png')),
          border: Border.all(color: const Color(0xff601155), width: 2.0),
          shape: BoxShape.circle,
        ),
        margin: const EdgeInsets.all(4.0),
      );
    }
    return Container();
  }
}
