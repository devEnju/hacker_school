import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'pages/game_page.dart';

import 'provider/game_provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker School Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FutureBuilder<List<CameraDescription>>(
        future: availableCameras(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ChangeNotifierProvider(
              create: (context) => GameProvider(),
              child: GamePage(
                header: 'Huawei ML Kit',
                camera: snapshot.data!.first,
              ),
            );
          }
          return Container();
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
