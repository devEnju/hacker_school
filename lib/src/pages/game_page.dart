import 'package:camera/camera.dart';

import 'package:flutter/material.dart' hide Element;

import 'package:huawei_ml_body/huawei_ml_body.dart';

import 'package:provider/provider.dart';

import '../models/player.dart';

import '../provider/game_provider.dart';

import '../widgets/camera_card.dart';
import '../widgets/game_card.dart';
import '../widgets/result_text.dart';

class GamePage extends StatefulWidget {
  const GamePage({
<<<<<<< HEAD
    Key? key,
    required this.header,
    required this.camera,
  }) : super(key: key);
=======
    super.key,
    required this.header,
  });
>>>>>>> acc8bb3eb451edc1267eee4e966163ec97c39bcf

  final String header;
  final CameraDescription camera;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late CameraController controller;

  Future<void> picture() async {
    XFile image = await controller.takePicture();

    await analyze(image.path);
  }

  Future<void> analyze(String path) async {
    var analyzer = MLGestureAnalyzer();

    List<MLGesture> list = await analyzer.analyseFrame(path);

    if (list.isNotEmpty) {
      MLGesture result = list.first;

      var provider = context.read<GameProvider>();

      if (result.category == MLGesture.fist) {
        provider.setHand(Hand.rock);
      }
      if (result.category == MLGesture.five) {
        provider.setHand(Hand.paper);
      }
      if (result.category == MLGesture.second) {
        provider.setHand(Hand.scissors);
      }
    }

    await analyzer.stop();
  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.read<GameProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: () => provider.reset(),
        ),
        title: Text(widget.header),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const Expanded(
            flex: 2,
            child: GameCards(),
          ),
          const ResultText(),
          Expanded(
            flex: 5,
            child: CameraCard(cameraController: controller),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => picture(),
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
