import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';

class GameController extends Game {
  Size screenSize;
  double tileSize;

  GameController() {
    initialize();
  }

  void render(Canvas c) {}

  void update(double t) {}

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 10;
  }

  Future<void> initialize() async {
    resize(await Flame.util.initialDimensions());
  }
}
