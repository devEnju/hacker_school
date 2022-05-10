import 'dart:math';

import 'package:flutter/material.dart';

import '../models/player.dart';

import '../widgets/game_card.dart';
import '../widgets/result_text.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key, required this.header}) : super(key: key);

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
    int random = Random().nextInt(3);

    // momentan wählt der Computer immer einen Stein
    if (random == 0) cRock = true;
    if (random == 1) cRock = true;
    if (random == 2) cRock = true;
  }

  void setRock() {
    pRock = true;

    randomize();

    setState(() {});

    reset();
  }

  void setPaper() {
    pPaper = true;

    randomize();

    setState(() {});

    reset();
  }

  void setScissors() {
    pScissors = true;

    randomize();

    setState(() {});

    reset();
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
                GameCard(pRock, pPaper, pScissors, name: player.name),
                GameCard(cRock, cPaper, cScissors, name: computer.name),
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
