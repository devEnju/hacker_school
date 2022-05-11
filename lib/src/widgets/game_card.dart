import 'package:flutter/material.dart';

import '../models/player.dart';

import 'choice_image.dart';

class GameCard extends StatelessWidget {
  const GameCard(
    this.player, {
    Key? key,
  }) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 120.0,
        height: 120.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${player.name}: ${player.counter}'),
            Expanded(child: Center(child: ChoiceImage(player.hand))),
          ],
        ),
      ),
    );
  }
}
