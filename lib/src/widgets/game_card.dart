import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/player.dart';

import '../provider/game_provider.dart';

import 'choice_text.dart';

class GameCards extends StatelessWidget {
  const GameCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<GameProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GameCard(provider.player, Icons.person),
        GameCard(provider.computer, Icons.computer),
      ],
    );
  }
}

class GameCard extends StatelessWidget {
  const GameCard(
<<<<<<< HEAD
    this.player,
    this.icon, {
    Key? key,
  }) : super(key: key);
=======
    this.rock,
    this.paper,
    this.scissors, {
    super.key,
    required this.name,
  });
>>>>>>> acc8bb3eb451edc1267eee4e966163ec97c39bcf

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
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Icon(icon, size: 16.0),
              ),
              Text('${player.name}: ${player.counter}'),
            ]),
            Expanded(child: Center(child: ChoiceText(player.hand))),
          ],
        ),
      ),
    );
  }
}
