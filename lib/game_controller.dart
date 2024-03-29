import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

class GameController{
  ValueNotifier<GameData> currentData;

  ValueNotifier<List<String>> texts;

  ValueNotifier<bool> isAnimating;

  dispose(){
    currentData.dispose();
    texts.dispose();
  }

  Function updateText;

  GameController({this.currentData, this.texts});
}