import 'package:flutter/material.dart';

import 'choice_text.dart';

class GameCard extends StatelessWidget {
  const GameCard(
    this.rock,
    this.paper,
    this.scissors, {
    Key? key,
    required this.name,
  }) : super(key: key);

  final bool rock;
  final bool paper;
  final bool scissors;

  final String name;

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
            Text(name),
            Expanded(child: Center(child: ChoiceText(rock, paper, scissors))),
          ],
        ),
      ),
    );
  }
}
