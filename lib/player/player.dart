import 'package:bonfire/bonfire.dart';
import 'package:flutter/services.dart';
import 'package:pixel_bongers/player/gabe_sprites.dart';
import 'package:pixel_bongers/player/player_sprite_sheet.dart';

class PlayerOne extends SimplePlayer with BlockMovementCollision {
  bool isOnCooldown = false;

  PlayerOne({required super.position}) : super(
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
      if (lastDirection == Direction.left || lastDirection == Direction.upLeft || lastDirection == Direction.downLeft) {
        flipXAxis = true;
      }
      animation?.playOnce(GabeSprites.jab, flipX: flipXAxis);
      Future.delayed(Duration(seconds: 1), () {
        isOnCooldown = false;
      });
    }
    return super.onJoystickAction(event);
    
  }
}