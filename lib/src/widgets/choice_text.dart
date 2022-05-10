import 'package:flutter/material.dart';

import '../models/player.dart';

class ChoiceText extends StatelessWidget {
  const ChoiceText(
    this.hand, {
    Key? key,
  }) : super(key: key);

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
