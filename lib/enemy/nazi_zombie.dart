import 'package:bonfire/bonfire.dart';
import 'package:bonfire/collision/block_movement_collision.dart';
import 'package:pixel_bongers/enemy/enemy_sprites.dart';

class NaziZombie extends SimpleEnemy with BlockMovementCollision {
  bool isOnCooldown = false;
  bool isStunned = false;

  NaziZombie({required super.position})
      : super(
          speed: 150,
          size: Vector2(256, 256),
          initDirection: Direction.right,
          animation: EnemySprites.zombieSprites,
        );

  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: Vector2(128, 32), position: Vector2(64, 208)));
    return super.onLoad();
  }
  
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      radiusVision: 1000,
      closePlayer: (_) {
        attack();
      }
    );
    super.update(dt);
  }

  @override
  void onReceiveDamage(AttackOriginEnum attacker, double damage, identify) {
    // TODO: implement onReceiveDamage
    speed = 0;
    animation?.playOnce(ZombieAnimations.hitLeft);
    Future.delayed(Duration(seconds: 1), () {
      speed = 150;
    });
    super.onReceiveDamage(attacker, damage, identify);
  }

  @override
  void onDie() {
    // TODO: implement onDie
    this.removeFromParent();
    super.onDie();
  }

  void attack() {
    if (!isOnCooldown) {
      isOnCooldown = true;
      simpleAttackMelee(damage: 20, size: Vector2(40, 40));
      animation?.playOnce(ZombieAnimations.attackLeft, flipX: false);
      Future.delayed(Duration(milliseconds: 1000), () {
        isOnCooldown = false;
      });
    }
  }
}