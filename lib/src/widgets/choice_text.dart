import 'package:flutter/material.dart' hide Element;

import '../models/player.dart';

class ChoiceText extends StatelessWidget {
  const ChoiceText(
<<<<<<< HEAD
    this.hand, {
    Key? key,
  }) : super(key: key);
=======
    this.rock,
    this.paper,
    this.scissors, {
    super.key,
  });
>>>>>>> acc8bb3eb451edc1267eee4e966163ec97c39bcf

  final Hand? hand;

  @override
  Widget build(BuildContext context) {
    if (hand == Hand.rock) {
      return const Text('Stein');
    }
    if (hand == Hand.paper) {
      return const Text('Papier');
    }
    if (hand == Hand.scissors) {
      return const Text('Schere');
    }

    return Container();
  }
}
