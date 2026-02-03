import 'package:bonfire/bonfire.dart';
import 'package:pixel_bongers/player/gabe_sprites.dart';
import 'package:pixel_bongers/player/jimmy_sprites.dart';

class PlayerSpriteSheet {
  static SimpleDirectionAnimation jimmyAnimations = SimpleDirectionAnimation(
    idleRight: JimmySprites.idleRight,
    idleLeft: JimmySprites.idleLeft,
    runRight: JimmySprites.walkRight,
    runLeft: JimmySprites.walkLeft,
  );
  static SimpleDirectionAnimation gabeAnimations = SimpleDirectionAnimation(
    idleRight: GabeSprites.idle,
    runRight: GabeSprites.walk,
    others: {
      "falling": GabeSprites.falling,
    }
  );
  static SimpleDirectionAnimation fallenGabeAnimations = SimpleDirectionAnimation(
    idleRight: GabeSprites.fallen,
    runRight: GabeSprites.fallen,
  );

}