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

class Feature {
  String title;
  int highTemp;
  int lowTemp;
  int physicalStrength;
  int lowGravity;
  int hightGravity;
  int lowFood;
  int hightPressure;
  int lowPressure;
  int oxygenFreedom;
  int dnaRepair;
  int toxicity;
  int cost;
  int id;
  String description;

  Feature(
      {this.title,
      this.highTemp,
      this.lowTemp,
      this.physicalStrength,
      this.lowGravity,
      this.hightGravity,
      this.lowFood,
      this.hightPressure,
      this.lowPressure,
      this.oxygenFreedom,
      this.dnaRepair,
      this.toxicity,
      this.cost,
      this.id,
      this.description});

  Feature.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    highTemp = json['highTemp'];
    lowTemp = json['lowTemp'];
    physicalStrength = json['physicalStrength'];
    lowGravity = json['lowGravity'];
    hightGravity = json['hightGravity'];
    lowFood = json['lowFood'];
    hightPressure = json['hightPressure'];
    lowPressure = json['lowPressure'];
    oxygenFreedom = json['oxygenFreedom'];
    dnaRepair = json['dnaRepair'];
    toxicity = json['toxicity'];
    cost = json['cost'];
    id = json['id'];
    description = json['text'];
  }
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