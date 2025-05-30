import 'package:bonfire/bonfire.dart';

class JimmySprites {
  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
    'characters/jimmy_walk_left.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
    'characters/jimmy_walk_right.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    'characters/jimmy_idle_right.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    'characters/jimmy_idle_left.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
}