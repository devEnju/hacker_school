import 'package:flutter/material.dart';

import '../models/player.dart';

import 'choice_image.dart';

class GameCard extends StatelessWidget {
  const GameCard(
    this.player,
    this.icon, {
    Key? key,
  }) : super(key: key);

  final Player player;
  final IconData icon;

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
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Icon(icon, size: 16.0),
                ),
                Text('${player.name}: ${player.counter}'),
              ]),
            ),
            Expanded(child: ChoiceImage(player.hand)),
          ],
        ),
      ),
    );
  }
}
