import 'package:astroventure/utils.dart';

List<GameData> gameData = [
  GameData(
    id: 1,
    text: '''Shuvo was always enthusiastic about space, the dark void. It is his great interest that made him understand that space is not all void. Space with all its mysteries attracted him so much that he decided to be a wanderer of space. Since his childhood he has always focused on activities to prepare himself for his dream. Today he is finally on the verge of achieving his dream as a NASA Astronaut with a Masters degree in Mathematics. ''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 2,
      ),
    ],
  ),
  GameData(
    id: 2,
    text: '''The upcoming mission for Shuvo is to reach the planet Trapist - 1e. In 2007, astronomers found the Trapist planetary system consisting of 8 planets. Among them Trapist - 1e piqued the most interest due to its relatively habitable nature. It has a rocky surface and most earth-like ocean world. Moreover, it lies within the range of the host star where water can be found in liquid form. His mission is to observe the planet and send back more data to be analysed.

Two probable routes have been calculated to reach the planet. Route A, takes more time than Route B as it takes a few detours to avoid hazardous zones. Therefore, it is safer in terms of the obstacles that may be faced. Whilst Route B will prove to be more challenging but will require much less time as it is a more straightforward of a route.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 3,
      ),
    ],
  ),
  GameData(
    id: 3,
    text: '''Now that the Mission Path has been selected it is time to decide on a balance of food and fuel to take on board. The spaceship has a limited capacity that it can carry and both the weight of food and fuel combined has to fit within that range.

While on the mission, Shuvo has the option to request for resupply probe but that will require him to have food to last while the probe arrives as well as fuel to slow down his ship to a stationery state.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 4,
      ),
    ],
  ),
  GameData(
    id: 4,
    text: '''Shuvo was always enthusiastic about space, the dark void. It is his great interest that made him understand that space is not all void. Space with all its mysteries attracted him so much that he decided to be a wanderer of space. Since his childhood he has always focused on activities to prepare himself for his dream. Today he is finally on the verge of achieving his dream as a NASA Astronaut with a Masters degree in Mathematics. ''',
    options: [
      Option(
        id: 1,
        text: 'Low Food, High Fuel',
        gameDataId: 5,
      ),
      Option(
        id: 2,
        text: 'Equal Amounts',
        gameDataId: -1,
      ),
      Option(
        id: 3,
        text: 'High Food, Low Fuel',
        gameDataId: -1,
      ),
    ],
  ),
  GameData(
    id: 5,
    text: '''2nd March, 2045.
Finally the day of launch has arrived for Shuvo. He is at the same time very excited and very calm. Going through all the pre-launch procedures to prepare for his 7 months journey. Just 20 years ago this kind of travel time was unimaginable. However, the breakthrough of ‘37 has redefined the limits of our space travel.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 6,
      ),
    ],
  ),
  GameData(
    id: 6,
    text: '''Shuvo is now in his seat. The spaceship has reached the last seconds of its countdown and... leaving the ground in a huge cloud of dust he takes off to venture into the unknown. He looks straight out of the cockpit to see the sky fast approaching him and soon he finds himself outside of the Earths’ atmosphere. He can hear loud cheers from Mission Control due to another successful launch and exit. The 4th one of this quarter. As the ship glides on in the void the thrusters detach and fall back leaving Shuvo on a path for Trapist - 1e.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 7,
      ),
    ],
  ),
  GameData(
    id: 7,
    text: '''Shuvo watces in awe as the Earth is now becoming a ball he can hold in his palms, the beautiful moon looks like a pebble. He can also see the International Space Station orbiting the Earth. He takes a break from the mind blowing view to check the ships’ trajectory to make sure everything is still alright. To his delight everything seems to be going exactly according to plan. Going back to the window he sees Mars, Saturn, Pluto passing him by. It was all going great until the ships radar started beeping. It has picked up on an asteroid ahead in the trajectory.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 8,
      ),
    ],
  ),
  GameData(
    id: 8,
    text: '''The radar is showing him some information about the asteroid. It is approximately the diameter of 5 zebras and now he must decide on whether to try and destroy this asteroid or steer his ship to avoid it completely. Both may have bad consequences as destroying the asteroid may cause broken parts of it to come at the ship unpredictably while miscalculation in the steering could cause the ship to crash right into the asteroid.''',
    options: [
      Option(
        id: 8,
        text: 'Next',
        gameDataId: 0,
      ),
    ],
  ),

  ///Static Data
  GameData(
    id: -1,
    text: '''You are Dead!''',
    options: [
      Option(
        id: 1,
        text: 'Start Over',
        gameDataId: 1,
      ),
    ],
  ),
  GameData(
    id: 0,
    text: '''Game Ended''',
    options: [
      Option(
        id: 1,
        text: 'Done',
        gameDataId: 1,
      ),
    ],
  ),
];
