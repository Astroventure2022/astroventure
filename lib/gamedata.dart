import 'package:astroventure/utils.dart';

const String missionTitle = "The First Colonizer";
const String missionBrief = '''
Shuvo is selected to be the astronaut to start the long awaited mars colonizing mission.It is a high risk high stake mission. Nasa is determined to make the journey for first human on mars as safe as possible. Nasa has done some surveys and came to these conclusions.
The atmosphere on the mars is very thin. And consiquently it has very little oxygen. Compasses dont work on Mars and they found the surface of mars covered with ice.
Your objective is to genetcally alter shuvos DNA to complete the mission successfully.
For the upcoming mission you need to send your character to Mars 
''';
const double credit = 1500;
List<Feature> features = List.generate(featuresJson.length, (index) => Feature.fromJson(featuresJson[index]));

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
      title: 'Biological Organisms',
    categories: [
      GuideCategory(
        id: 1,
        title: "Animal",
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
        ],
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
    ],
  ),
];

List<Map<String, dynamic>> featuresJson = [
    {
        "title": "Seal's Non stick Myoglobin",
        "highTemp": 0,
        "lowTemp": 3,
        "physicalStrength": 1,
        "lowGravity": 2,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 600,
        "id": 1,
        "text": "Seal's Non stick Myoglobin can store high amount of Oxygen."
    },
    {
        "title": "Mariana Snailfish's Skeleton",
        "highTemp": 0,
        "lowTemp": 3,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 2,
        "lowFood": 0,
        "hightPressure": 4,
        "lowPressure": 0,
        "oxygenFreedom": 1,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 1000,
        "id": 2,
        "text": "Mariana snailfish has gaps in the skeleton to stabilizie pressure, It has more trimethylamine N-oxide (TMAO) to stabilize protein at high pressure. It also has high number of proteins to transport substances "
    },
    {
        "title": "Red Worm's Diet",
        "highTemp": 1,
        "lowTemp": 0,
        "physicalStrength": 0,
        "lowGravity": 1,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 1,
        "dnaRepair": 0,
        "toxicity": 4,
        "cost": 700,
        "id": 3,
        "text": "Red worms can survive Sulfur environments by eating sulger metabolising bacteria"
    },
    {
        "title": "Thermococcus Gamatolerans's Regeneration",
        "highTemp": 3,
        "lowTemp": 0,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 3,
        "dnaRepair": 4,
        "toxicity": 0,
        "cost": 1000,
        "id": 4,
        "text": "Thermocuccus gammatolerans can withstand 30000 gy. It quickly repairs damaged chromosome without loss of viability"
    },
    {
        "title": "Dung Beetle's Strength",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 4,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 400,
        "id": 5,
        "text": "Dung beetle can lift 1141 times their weight"
    },
    {
        "title": "Ant's Strength",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 3,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 300,
        "id": 6,
        "text": "Ant can lift 50 times their weight"
    },
    {
        "title": "Kangaroo rat's Sustainability of Water",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 4,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 400,
        "id": 7,
        "text": "Kangaroo rat can survive without water. They can sustain water during breakdown of food"
    },
    {
        "title": "Polar Beer's Temperature Sensitivity",
        "highTemp": 0,
        "lowTemp": 3,
        "physicalStrength": 2,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 1,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 600,
        "id": 8,
        "text": "Polar beer can withstand -40 degree celsius. Their heat insulation is in several layers. Under their skin, there is a 4-inch (21.5 cm) layer of fat.  Next to the skin is a dense layer of woolly fur that also keeps heat in.  The fur you see is a thick layer of long, colorless guard hairs that shed water quickly after a swim. They are stiff and transparent and hollow. In the arctic sunlight, the hairs act like mirrors and reflect white light, which acts as camouflage against the snow so the bears are not seen by their prey.  Polar bear skin is actually black, so that it can absorb the invisible warm infrared rays of the sun and the bear’s own body heat, both of which are reflected back by the guard hairs."
    },
    {
        "title": "Raindeer's Temperature Sensitivity",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 1,
        "lowGravity": 2,
        "hightGravity": 1,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 400,
        "id": 9,
        "text": "Raindeer can withstand -70°Celsius"
    },
    {
        "title": "Olm's Digestion System",
        "highTemp": 0,
        "lowTemp": 1,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 4,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 500,
        "id": 10,
        "text": "When food is scarce olms reduce metabolic rate and activity. They can reabsorb their own tissue, hel;ing them last for 10 years"
    },
    {
        "title": "Crocodile's Conservation Skill",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 1,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 3,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 400,
        "id": 11,
        "text": "Crocodile can survive 3 years by staying just motionless"
    },
    {
        "title": "Strain121 Temperature Sensitivity",
        "highTemp": 4,
        "lowTemp": 0,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 400,
        "id": 12,
        "text": "Strian121 can survive 121 degree"
    },
    {
        "title": "Red Flag Bark Beetle's Temperature Sensitivity",
        "highTemp": 3,
        "lowTemp": 2,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 0,
        "cost": 500,
        "id": 13,
        "text": "Red flat bark beetle can withstand -150 degree celsius "
    },
    {
        "title": "killfish's Vulnerability",
        "highTemp": 0,
        "lowTemp": 0,
        "physicalStrength": 0,
        "lowGravity": 0,
        "hightGravity": 0,
        "lowFood": 0,
        "hightPressure": 0,
        "lowPressure": 0,
        "oxygenFreedom": 0,
        "dnaRepair": 0,
        "toxicity": 4,
        "cost": 400,
        "id": 14,
        "text": "Killfish can survive 8000 times the pollution it used to because of mutation. Many of these mutations help to deactivate or turn off a molecular pathway responsible for a lot of the cellular damage caused by the chemicals"
    }
];