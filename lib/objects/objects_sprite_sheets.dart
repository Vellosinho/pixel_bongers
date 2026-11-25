import 'package:bonfire/bonfire.dart';

class ObjectsSpriteSheets {
  static Future<Sprite> get bis => Sprite.load('map/bis.png');
  static Future<Sprite> get brasilia => Sprite.load('map/brasilia.png');
  static Future<Sprite> get fusca => Sprite.load('map/fusca.png');
  static Future<Sprite> get poste => Sprite.load('map/poste.png');

  Future<Sprite> getCarSprite(String type) async {
    switch (type) {
      case 'brasilia':
        return await brasilia;
      case 'fusca':
        return await fusca;
      default:
        return await brasilia; // Default sprite if type is not recognized
    }
  }
}