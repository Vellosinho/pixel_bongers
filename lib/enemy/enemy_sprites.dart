import 'package:bonfire/bonfire.dart';

class EnemySprites {
  static SimpleDirectionAnimation zombieSprites = SimpleDirectionAnimation(
    idleRight: ZombieAnimations.idleRight,
    idleLeft: ZombieAnimations.idleLeft,
    runRight: ZombieAnimations.walkRight,
    runLeft: ZombieAnimations.walkLeft,
  );

}

class ZombieAnimations {
  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
    'characters/zombie_walk_left.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
    'characters/zombie_walk_right.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
    'characters/zombie_idle_right.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get idleLeft => SpriteAnimation.load(
    'characters/zombie_idle_left.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get hitLeft => SpriteAnimation.load(
    'characters/zombie_hit_left.png',
    SpriteAnimationData.sequenced(amount: 4, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get hitRight => SpriteAnimation.load(
    'characters/zombie_hit_right.png',
    SpriteAnimationData.sequenced(amount: 4, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
  static Future<SpriteAnimation> get attackLeft => SpriteAnimation.load(
    'characters/zombie_attack_left.png',
    SpriteAnimationData.sequenced(amount: 6, stepTime: 0.15, textureSize: Vector2(64, 64))
  );
}