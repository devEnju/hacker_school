import 'package:flutter/material.dart';

import '../models/player.dart';

class ResultText extends StatelessWidget {
  const ResultText(
    this.player,
    this.computer, {
    super.key,
  });

  final Player player;
  final Player computer;

  @override
  Widget build(BuildContext context) {
    if (player.isWinning(computer.hand)) {
      return const Text('Du hast gewonnen!');
    }

    if (computer.isWinning(player.hand)) {
      return const Text('Der Computer hat gewonnen!');
    }

    if (player.hand != null && computer.hand != null) {
      return const Text('Keiner hat gewonnen.');
    }

    return const Text('Das Spiel hat noch nicht begonnen.');
  }
}
