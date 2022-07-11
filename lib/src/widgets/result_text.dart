import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/game_provider.dart';

class ResultText extends StatelessWidget {
<<<<<<< HEAD
  const ResultText({
    Key? key,
  }) : super(key: key);
=======
  const ResultText(
    this.pRock,
    this.pPaper,
    this.pScissors,
    this.cRock,
    this.cPaper,
    this.cScissors, {
    super.key,
  });
>>>>>>> acc8bb3eb451edc1267eee4e966163ec97c39bcf

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
