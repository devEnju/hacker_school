import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText(
    this.pRock,
    this.pPaper,
    this.pScissors,
    this.cRock,
    this.cPaper,
    this.cScissors, {
    super.key,
  });

  final bool pRock;
  final bool pPaper;
  final bool pScissors;

  final bool cRock;
  final bool cPaper;
  final bool cScissors;

  @override
  Widget build(BuildContext context) {
    if (pRock && cScissors || pPaper && cRock || pScissors && cPaper) {
      return const Text('Du hast gewonnen!');
    }

    if (cRock && pScissors || cPaper && pRock || cScissors && pPaper) {
      return const Text('Der Computer hat gewonnen!');
    }

    if (pRock || pPaper || pScissors) {
      return const Text('Keiner hat gewonnen.');
    }

    return const Text('Das Spiel hat noch nicht begonnen.');
  }
}
