import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/game_provider.dart';

class ResultText extends StatelessWidget {
  const ResultText({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<GameProvider>();

    if (provider.won()) {
      return const Text('Du hast gewonnen!');
    }

    if (provider.lost()) {
      return const Text('Der Computer hat gewonnen!');
    }

    if (provider.player.hand != null && provider.computer.hand != null) {
      return const Text('Keiner hat gewonnen.');
    }

    return const Text('Das Spiel hat noch nicht begonnen.');
  }
}
