import 'package:flutter/material.dart';

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

class ControlOption{
  int id;
  String title;

  ControlOption({this.id, this.title});
}

class Guide{
  int id;
  String title;
  List<GuideCategory> categories;
  Guide({this.id, this.title, this.categories});
}

class GuideCategory{
  int id;
  String title;
  List<GuideItem> items;
  GuideCategory({this.id, this.title, this.items});
}

class GuideItem{
  int id;
  String title;
  String text;
  GuideItem({this.id, this.title, this.text});
}