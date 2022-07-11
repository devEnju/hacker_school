import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.header,
  });

  final String header;

  @override
  Widget build(BuildContext context) {
    String titel = 'Neuer Titel';
    String text = 'Hallo Welt!';

    bool richtig = true;
    bool falsch = false;

    int zahl = 27;
    zahl = zahl + 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('$header $titel'),
        centerTitle: richtig,
      ),
      body: Center(
        child: Text('$text & $falsch'),
      ),
    );
  }
}
