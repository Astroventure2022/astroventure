import 'package:astroventure/utils.dart';

List<GameData> gameData = [
  GameData(
    id: 1,
    text: 'You are in a dark room. You see a door to your left and a door to your right. Which door do you go through?',
    options: [
      Option(
        id: 1,
        text: 'left door',
        gameDataId: 2,
      ),
      Option(
        id: 2,
        text: 'right door',
        gameDataId: 3,
      ),
    ],
  ),
  GameData(
    id: 2,
    text: 'You go through the left door. You see a light switch. Do you turn it on or off?',
    options: [
      Option(
        id: 1,
        text: 'turn on',
        gameDataId: 4,
      ),
      Option(
        id: 2,
        text: 'turn off',
        gameDataId: 5,
      ),
    ],
  ),
  GameData(
    id: 3,
    text: 'You go through the right door. You see a fan switch. Do you turn it on or off?',
    options: [
      Option(
        id: 1,
        text: 'turn on',
        gameDataId: 4,
      ),
      Option(
        id: 2,
        text: 'turn off',
        gameDataId: 5,
      ),
    ],
  ),
];
