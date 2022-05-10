import 'dart:math';

class Player {
  Player(this.name);

  final String name;

  Hand? hand;
  int counter = 0;

  void randomizeHand() {
    int random = Random().nextInt(Hand.values.length);

    hand = Hand.values[random];
  }

  bool isWinning(Hand? other) {
    bool rock = hand == Hand.rock && other == Hand.scissors;
    bool paper = hand == Hand.paper && other == Hand.rock;
    bool scissors = hand == Hand.scissors && other == Hand.paper;

    return rock || paper || scissors;
  }

  void increaseCounter(Player opponent) {
    if (isWinning(opponent.hand)) counter++;
  }
}

enum Hand {
  rock,
  paper,
  scissors,
}
