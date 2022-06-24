import 'package:astroventure/controls.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import 'ScrollingText.dart';
import 'game_controller.dart';
import 'gamedata.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  GameController gameController;

  @override
  initState() {
    gameController = GameController();
    gameController.currentData = ValueNotifier<GameData>(gameData[0]);
    gameController.texts = ValueNotifier<List<String>>([gameController.currentData.value.text]);
    super.initState();
  }

  @override
  dispose() {
    gameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272324),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset('assets/images/visual.png'),
              ),
            ),
            Expanded(
              flex: 3,
              child: ScrollingText(
                controller: gameController,
              ),
            ),
            Expanded(
              child: Controls( controller: gameController),
            ),
          ],
        ),
      ),
    );
  }
}
