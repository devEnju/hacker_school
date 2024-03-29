import 'dart:math';

import 'package:flutter/material.dart' hide Element;

import '../models/player.dart';

import '../widgets/game_card.dart';
import '../widgets/result_text.dart';

class GamePage extends StatefulWidget {
  const GamePage({
    super.key,
    required this.header,
  });

  final String header;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var player = Player('Spieler');
  var computer = Player('Computer');

  bool pRock = false;
  bool pPaper = false;
  bool pScissors = false;

  bool cRock = false;
  bool cPaper = false;
  bool cScissors = false;

  void reset() {
    pRock = false;
    pPaper = false;
    pScissors = false;

    cRock = false;
    cPaper = false;
    cScissors = false;
  }

  void randomize() {
    int dice = Random().nextInt(3);

    // momentan wählt der Computer immer einen Stein
    if (dice == 0) cRock = true;
    if (dice == 1) cRock = true;
    if (dice == 2) cRock = true;
  }

  void setRock() {
    reset();

    pRock = true;

    randomize();

    setState(() {});
  }

  void setPaper() {
    reset();

    pPaper = true;

    randomize();

    setState(() {});
  }

  void setScissors() {
    reset();

    pScissors = true;

    randomize();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.header),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GameCard(pRock, pPaper, pScissors, player: player),
                GameCard(cRock, cPaper, cScissors, player: computer),
              ],
            ),
          ),
          ResultText(pRock, pPaper, pScissors, cRock, cPaper, cScissors),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => setScissors(),
                  child: const Text('Schere'),
                ),
                ElevatedButton(
                  onPressed: () => setRock(),
                  child: const Text('Stein'),
                ),
                ElevatedButton(
                  onPressed: () => setPaper(),
                  child: const Text('Papier'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
