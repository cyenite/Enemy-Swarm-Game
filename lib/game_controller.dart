import 'package:flame/flame.dart';
import 'package:flame/game/game.dart';
import 'package:flutter/material.dart';

import 'components/player.dart';

class GameController extends Game {
  Size screenSize;
  double tileSize;
  Player player;

  GameController() {
    initialize();
  }

  void render(Canvas c) {
    Rect background = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint backgroundPaint = Paint()..color = Color(0xFFFAFAFA);
    c.drawRect(background, backgroundPaint);

    player.render(c)
  }

  void update(double t) {}

  void resize(Size size) {
    screenSize = size;
    tileSize = screenSize.width / 10;
  }

  Future<void> initialize() async {
    resize(await Flame.util.initialDimensions());
    player = Player(this);
  }
}
