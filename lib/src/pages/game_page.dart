import 'package:flutter/material.dart' hide Element;

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

  void reset() {
    player = Player('Spieler');
    computer = Player('Computer');

    setState(() {});
  }

  void setHand(Hand hand) {
    player.hand = hand;
    computer.randomizeHand();

    player.increaseCounter(computer);
    computer.increaseCounter(player);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () => reset(),
        ),
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
                GameCard(player),
                GameCard(computer),
              ],
            ),
          ),
          ResultText(player, computer),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => setHand(Hand.scissors),
                  child: const Text('Schere'),
                ),
                ElevatedButton(
                  onPressed: () => setHand(Hand.rock),
                  child: const Text('Stein'),
                ),
                ElevatedButton(
                  onPressed: () => setHand(Hand.paper),
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
