import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'game_controller.dart';

Future<void> main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  GameController gameController = GameController();
  runApp(gameController.widget);
}
