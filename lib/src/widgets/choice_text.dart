import 'package:flutter/material.dart' hide Element;

import '../models/player.dart';

class ChoiceText extends StatelessWidget {
  const ChoiceText(
    this.hand, {
    super.key,
  });

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
