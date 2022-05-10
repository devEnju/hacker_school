import 'package:flutter/foundation.dart';

import '../models/player.dart';

class GameProvider with ChangeNotifier {
  var player = Player('Spieler');
  var computer = Player('Computer');

  void reset() {
    player = Player('Spieler');
    computer = Player('Computer');

    notifyListeners();
  }

  void setHand(Hand hand) {
    player.hand = hand;
    computer.randomizeHand();

    player.increaseCounter(computer);
    computer.increaseCounter(player);

    notifyListeners();
  }

  bool won() {
    return player.isWinning(computer.hand);
  }

  bool lost() {
    return computer.isWinning(player.hand);
  }
}
