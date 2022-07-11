import 'package:flutter/material.dart' hide Element;

class ChoiceText extends StatelessWidget {
  const ChoiceText(
    this.rock,
    this.paper,
    this.scissors, {
    super.key,
  });

  final bool rock;
  final bool paper;
  final bool scissors;

  @override
  Widget build(BuildContext context) {
    if (rock) {
      return const Text('Stein');
    }
    if (paper) {
      return const Text('Papier');
    }
    if (scissors) {
      return const Text('Schere');
    }

    return Container();
  }
}
