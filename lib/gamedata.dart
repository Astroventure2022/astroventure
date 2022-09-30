import 'package:astroventure/utils.dart';

const String missionTitle = "The First Colonizer";
const String missionBrief = '''Shuvo is selected to be the astronaut to start the long awaited mars colonizing mission.It is a high risk high stake mission. Nasa is determined to make the journey for first human on mars as safe as possible. Nasa has determined 3 fatal challenges that needs to be solved. 
1st one being the atmosphere. The atmosphere on the mars is very thin. And consiquently it has very little oxygen.
The 2nd challenge is radiation. The magnetic field of earth protects us from the solar radiation. Unfortunately mars does not have that type of protection
And the 3rd challenge is the toxic soil which is rich in sulpher.
Your objective is to genetcally alter shuvos DNA to complete the mission successfully.
''';
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
        title: 'Physical Challenges',
        items: [
          GuideItem(
            id: 1,
            title: 'Digestive',
            text: 'Details about Digestive.',
          ),
          GuideItem(
            id: 2,
            title: 'Sleep Cycle',
            text: 'This is a dummy data',
          ),
          GuideItem(
            id: 3,
            title: 'Muscle Atrophy',
            text: 'This is a dummy data',
          ),
          GuideItem(
            id: 4,
            title: 'Change in structure of brain',
            text: ' Radiation can penetrate living tissue and cause both short and long-term damage to the bone marrow stem cells which create the blood and immune systems.',
          ),
          GuideItem(
            id: 5,
            title: 'Change in structure of brain',
            text: 'This is a dummy data',
          ),
          GuideItem(
            id: 6,
            title: 'Loss of muscle and bone',
            text: 'This is a dummy data',
          ),
        ]
      ),
      GuideCategory(
        id: 2,
        title: 'Environmental Challenges',
        items: [
          GuideItem(
            id: 1,
            title: 'Solar Radiation',
            text: 'Details about rough terrain.',
          ),
          GuideItem(
            id: 2,
            title: 'Anaerobic Respiration',
            text: 'Details about Anaerobic Respiration.',
          ),
          GuideItem(
            id: 3,
            title: 'Body Heat Generation',
            text: 'Details about rough terrain.',
          ),
          GuideItem(
            id: 4,
            title: 'Hypergravity',
            text: 'Details about rough terrain.',
          ),
          GuideItem(
            id: 5,
            title: 'Microgravity',
            text: 'Details about rough terrain.',
          ),
        ]
      ),
      GuideCategory(
        id: 3,
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
    categories: [
      GuideCategory(
        id: 1,
        title: "Animal"
        items: [
          GuideItem(
            id: 1,
            title: 'Seal',
            text: '',
          ),
          GuideItem(
            id: 2,
            title: 'Mariana snailfish',
            text: '''Have gaps in the sheleton to stabilizie pressure
Has more trimethylamine N-oxide (TMAO) to stabilize protein at high pressure
Has high number of proteins to transport substances 
''',
          ),
          GuideItem(
            id: 3,
            title: 'Polar bear',
            text: 'Their heat insulation is in several layers. Under their skin, there is a 4-inch (21.5 cm) layer of fat.  Next to the skin is a dense layer of woolly fur that also keeps heat in.  The fur you see is a thick layer of long, colorless guard hairs that shed water quickly after a swim. They are stiff and transparent and hollow. In the arctic sunlight, the hairs act like mirrors and reflect white light, which acts as camouflage against the snow so the bears are not seen by their prey.  Polar bear skin is actually black, so that it can absorb the invisible warm infrared rays of the sun and the bear’s own body heat, both of which are reflected back by the guard hairs.',
          ),
        ]
      ),
      GuideCategory(
        id: 2,
        title: "Insects",
        items: [
          GuideItem(
            id: 1,
            title: 'Dung beetle',
            text: '',
          ),
        ]
      ),
  ),
];
