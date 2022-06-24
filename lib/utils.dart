class GameData{
  int id;
  String text;
  List<Option> options;

  GameData({this.id, this.text, this.options});
}

class Option{
  int id;
  String text;
  int gameDataId;

  Option({this.id, this.text, this.gameDataId});
}