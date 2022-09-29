import 'package:astroventure/utils.dart';

const String missionTitle = "Mission Pluto";
const String missionBrief = '''The upcoming mission for Shuvo is to reach the planet Trapist - 1e. In 2007, astronomers found the Trapist planetary system consisting of 8 planets. Among them Trapist - 1e piqued the most interest due to its relatively habitable nature. It has a rocky surface and most earth-like ocean world. Moreover, it lies within the range of the host star where water can be found in liquid form. His mission is to observe the planet and send back more data to be analysed.

Two probable routes have been calculated to reach the planet. Route A, takes more time than Route B as it takes a few detours to avoid hazardous zones. Therefore, it is safer in terms of the obstacles that may be faced. Whilst Route B will prove to be more challenging but will require much less time as it is a more straightforward of a route.''';
const double credit = 100;
List<Feature> features = [
  Feature(id: 1, title: "Fuel", description: "Fuel is used to travel to different planets. It is also used to refuel the ship.", cost: 10),
  Feature(id: 1, title: "Test", description: "This is a test", cost: 30),
  Feature(id: 1, title: "Cool Product", description: "Another Text Description", cost: 30),
  Feature(id: 1, title: "Organ", description: "Ant's organ is preferable for heavy gravity walks.", cost: 40),
];

List<Guide> guides = [
  Guide(
    id: 1,
    title: 'Challenges',
    categories: [
      GuideCategory(
        id: 1,
        title: 'Environmental Challenges',
        items: [
          GuideItem(
            id: 1,
            title: 'Hyper-Gravity',
            text: 'Details about micro gravity.',
          ),
          GuideItem(
            id: 2,
            title: 'Dummy Data',
            text: 'This is a dummy data',
          ),
        ]
      ),
      GuideCategory(
        id: 2,
        title: 'Psychological Challenges',
        items: [
          GuideItem(
            id: 1,
            title: 'Rough Terrain',
            text: 'Details about rough terrain.',
          )
        ]
      ),
    ]
  ),
  Guide(
      id: 2,
      title: 'Biological Organisms'
  ),
];