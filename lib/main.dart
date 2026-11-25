import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_bongers/enemy/nazi_zombie.dart';
import 'package:pixel_bongers/objects/car.dart';
import 'package:pixel_bongers/objects/lamp_post.dart';
import 'package:pixel_bongers/objects/motorcycle.dart';
import 'package:pixel_bongers/player/player.dart';
double tileSize = 128;
// const CharacterFaction playerTwoFaction = CharacterFaction.Capitalist;
// SimpleDirectionAnimation playerTwoAnimations = getArcherAnimations(playerTwoFaction);

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();
  // await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
  // await windowManager.setFullScreen(true);

  runApp(const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Game(),
      ),
  );
}


class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return  BonfireWidget(
      backgroundColor: Color(0xff000000),
      playerControllers: [
        Keyboard(
            config: KeyboardConfig(acceptedKeys: [
          LogicalKeyboardKey.arrowDown,
          LogicalKeyboardKey.arrowLeft,
          LogicalKeyboardKey.arrowUp,
          LogicalKeyboardKey.arrowRight,
          LogicalKeyboardKey.keyZ,
          LogicalKeyboardKey.keyX,
          LogicalKeyboardKey.keyC,
          LogicalKeyboardKey.escape,
        ]))
      ],
      components: [
        Car(type: 'brasilia', position: Vector2(tileSize * 0, tileSize * 3)),
        // LampPost(position: Vector2(tileSize * 4, -  ((tileSize * 2) + 16))),
        Car(type: 'fusca', position: Vector2(tileSize * 5.5, tileSize * 3)),
        Car(type: 'brasilia', position: Vector2(tileSize * 9, tileSize * 3)),
        Bis(position: Vector2(tileSize * 16, tileSize * 3)),
        // NaziZombie(position: Vector2(tileSize * 16, tileSize * 3)),
        ...lampPosts,
      ],
      player: GabeGonzalez(position: Vector2(0, tileSize * 5)),
      cameraConfig: CameraConfig(zoom: 1.25, moveOnlyMapArea: true),
      // cameraConfig: CameraConfig(zoom: 1.25),
      map: WorldMapByTiled(
        WorldMapReader.fromAsset(
            'untitled.tmj'),
        forceTileSize: Vector2(tileSize, tileSize),
      ),
      // showCollisionArea: true,
    );
  }
}

