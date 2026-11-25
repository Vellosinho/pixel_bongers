import 'package:bonfire/bonfire.dart';

class GabeSprites {
    static Future<SpriteAnimation> get init => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_init.png',
    SpriteAnimationData.sequenced(amount: 21, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get walk => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_walk.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  //   static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
  //   'characters/gabe_walk.png',
  //   SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  // );
    static Future<SpriteAnimation> get idle => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_idle.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get jab => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_jab.png',
    SpriteAnimationData.sequenced(amount: 4, stepTime: 0.10, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get cross => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_cross.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.08, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get falling => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_falling.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get fallen => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_dying.png',
    SpriteAnimationData.sequenced(amount: 8, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
    static Future<SpriteAnimation> get rising => SpriteAnimation.load(
    'characters/gabe_gonzales/gabe_rising.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
}