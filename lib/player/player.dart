import 'package:bonfire/bonfire.dart';
import 'package:flutter/services.dart';
import 'package:pixel_bongers/player/gabe_sprites.dart';
import 'package:pixel_bongers/player/player_sprite_sheet.dart';

class GabeGonzalez extends SimplePlayer with BlockMovementCollision {
  bool isOnCooldown = false;
  bool isCombo = false;

  GabeGonzalez({required super.position})
      : super(
          speed: 200,
          size: Vector2(256, 256),
          initDirection: Direction.right,
          animation: PlayerSpriteSheet.gabeAnimations,
        );

  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: Vector2(128, 32), position: Vector2(64, 208)));
    return super.onLoad();
  }

  @override
  void onJoystickAction(JoystickActionEvent event) {
    if (event.id.keyId == LogicalKeyboardKey.keyZ.keyId && !isOnCooldown) {
      bool flipXAxis = false;
      isOnCooldown = true;
      if (lastDirection == Direction.left ||
          lastDirection == Direction.upLeft ||
          lastDirection == Direction.downLeft) {
        flipXAxis = true;
      }
      if (!isCombo) {
        animation?.playOnce(GabeSprites.jab, flipX: flipXAxis);
        isCombo = true;
        Future.delayed(Duration(milliseconds: 800), () {
          isCombo = false;
        });
      } else {
        animation?.playOnce(GabeSprites.cross, flipX: flipXAxis);
      }
      Future.delayed(Duration(milliseconds: 500), () {
        isOnCooldown = false;
      });
    }
    return super.onJoystickAction(event);
  }
}

class JimmyCalifornia extends SimplePlayer with BlockMovementCollision {
  bool isOnCooldown = false;

  JimmyCalifornia({required super.position})
      : super(
          speed: 200,
          size: Vector2(256, 256),
          initDirection: Direction.right,
          animation: PlayerSpriteSheet.gabeAnimations,
        );

  @override
  void onJoystickAction(JoystickActionEvent event) {
    if (event.id.keyId == LogicalKeyboardKey.keyZ.keyId && !isOnCooldown) {
      bool flipXAxis = false;
      isOnCooldown = true;
      if (lastDirection == Direction.left ||
          lastDirection == Direction.upLeft ||
          lastDirection == Direction.downLeft) {
        flipXAxis = true;
      }
      animation?.playOnce(GabeSprites.jab, flipX: flipXAxis);
      Future.delayed(Duration(milliseconds: 500), () {
        isOnCooldown = false;
      });
    }
    return super.onJoystickAction(event);
  }
}
