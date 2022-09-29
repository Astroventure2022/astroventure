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

class Feature{
  int id;
  String title;
  String description;
  double cost;

  Feature({this.id, this.title, this.description, this.cost});
}