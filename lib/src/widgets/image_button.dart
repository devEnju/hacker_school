import 'package:flutter/material.dart';

import '../models/player.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(
    this.hand, {
    required this.onPressed,
    this.size,
    super.key,
  });

  final Hand hand;
  final void Function(Hand hand) onPressed;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/${hand.name}.png'),
        ),
        border: Border.all(
          color: const Color(0xff601155),
          width: 2.0,
        ),
        shape: BoxShape.circle,
      ),
      width: size,
      height: size,
      child: InkResponse(
        onTap: () => onPressed(hand),
        radius: (size != null) ? size! / 2.0 : null,
      ),
    );
  }
}
