import 'package:flutter/material.dart';

import 'pages/game_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker School Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const GamePage(
        header: 'Schere, Stein, Papier',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
