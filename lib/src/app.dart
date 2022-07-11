import 'package:flutter/material.dart';

import 'pages/game_page.dart';
import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker School Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(
        header: 'Hacker School',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
