import 'package:camera/camera.dart';

import 'package:flutter/material.dart';

class CameraCard extends StatelessWidget {
  const CameraCard({
    Key? key,
    required this.cameraController,
  }) : super(key: key);

  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: cameraController.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: CameraPreview(cameraController),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
