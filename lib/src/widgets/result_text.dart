import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  const ResultText(
    this.pRock,
    this.pPaper,
    this.pScissors,
    this.cRock,
    this.cPaper,
    this.cScissors, {
    Key? key,
  }) : super(key: key);

  final bool pRock;
  final bool pPaper;
  final bool pScissors;

  final bool cRock;
  final bool cPaper;
  final bool cScissors;

  @override
  Widget build(BuildContext context) {
    // es fehlt die Überprüfung wenn ein Spieler gewonnen hat
    
    if (cRock && pScissors || cPaper && pRock || cScissors && pPaper) {
      return const Text('Der Computer hat gewonnen!');
    }

    if (pRock || pPaper || pScissors) {
      return const Text('Keiner hat gewonnen.');
    }

    return const Text('Das Spiel hat noch nicht begonnen.');
  }
}
