import 'package:bonfire/bonfire.dart';

class GabeSprites {
    static Future<SpriteAnimation> get walk => SpriteAnimation.load(
    'characters/gabe_walk.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  //   static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
  //   'characters/gabe_walk.png',
  //   SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  // );
    static Future<SpriteAnimation> get idle => SpriteAnimation.load(
    'characters/gabe_idle.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get jab => SpriteAnimation.load(
    'characters/gabe_jab.png',
    SpriteAnimationData.sequenced(amount: 4, stepTime: 0.10, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get cross => SpriteAnimation.load(
    'characters/gabe_cross.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.08, textureSize: Vector2(64, 64))
  );
}