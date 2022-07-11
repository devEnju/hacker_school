import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

import 'pages/game_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CameraDescription>>(
      future: availableCameras(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Hacker School Demo',
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            home: GamePage(
              header: 'Huawei ML Kit',
              camera: snapshot.data!.first,
            ),
            debugShowCheckedModeBanner: false,
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
