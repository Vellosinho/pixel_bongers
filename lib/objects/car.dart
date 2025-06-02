import 'package:bonfire/bonfire.dart';
import 'package:pixel_bongers/objects/objects_sprite_sheets.dart';

class Car extends GameDecoration with Attackable {
  Car({required super.position})
      : super.withSprite(
            sprite: ObjectsSpriteSheets.brasilia, size: Vector2(384, 256))
  // : super.withSprite(sprite: GameObjectsSprites.anvil, position: position, size: Vector2(96, 96))
  ;
  @override
  Future<void> onLoad() async {
    add(RectangleHitbox(
      size: Vector2(320, 48),
      position: Vector2(32, 104),
    ));
    // final program = await FragmentProgram.fromAsset('shaders/myshader.frag');
    return super.onLoad();
  }

  // Future<void> updateAnvilSprite() async {
  //   if (localGameController.minigameIsActive) {
  //     if (localGameController.swordScore < 50) {
  //       sprite = await GameObjectsSprites.anvilFirstHit;
  //     } else if (localGameController.swordScore < 100) {
  //       sprite = await GameObjectsSprites.anvilSecondHit;
  //     } else if (localGameController.swordScore < 150) {
  //       sprite = await GameObjectsSprites.anvilThirdHit;
  //     } else if (localGameController.swordScore < 200) {
  //       sprite = await GameObjectsSprites.anvilFourthHit;
  //     } else if (localGameController.swordScore < 250) {
  //       sprite = await GameObjectsSprites.anvilFifthHit;
  //     }
  //   } else {
  //     sprite = await GameObjectsSprites.anvil;
  //   }
  // }

  @override
  void update(double dt) {
    // updateAnvilSprite();
    super.update(dt);
  }

  @override
  void onReceiveDamage(attacker, double damage, identify) {
    super.onReceiveDamage(attacker, 0.0, identify);
  }
}
