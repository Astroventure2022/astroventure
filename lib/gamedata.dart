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
    text: '''Shuvo has the following options to choose...''',
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
        id: 1,
        text: 'Next',
        gameDataId: 9,
      ),
    ],
  ),
  GameData(
    id: 9,
    text: '''With the available options at hand, Shuvo has some more information regarding the asteroids that will help him decide on which way is optimal. 

Firstly, the diameter of the asteroid is 5 zebras
Secondly, it is moving at a velocity of 3 soccer fields per minute
Thirdly, the calculated detour path is 7 soccer fields long

Moreover, to split apart a 1 zebra diameter asteroid, one needs a laser fired for 5 minutes which consumes 20 Airconditioner energy. ''',
    options: [
      Option(
        id: 1,
        text: 'Attempt to Destroy Asteroid',
        gameDataId: -1,
      ),
      Option(
        id: 1,
        text: 'Try to Move out of way',
        gameDataId: 10,
      ),
    ],
  ),
  GameData(
    id: 10,
    text: '''Finally after getting through this sudden and troubling situation Shuvo can rest a little as he soars past the asteroid and arrives back on his required trajectory. He freshens up and takes a nap for an hour. Waking up from his nap, Shuvo goes around the ship doing some inspection of the large variety of items he’s been sent out to space with. Once done with that he eats some dried fruits while looking out the window to take in the mesmerizing view of the void that is the space. Keeping himself busy with various activities his time to sleep approaches and he sends a transmission back to mission control before going to sleep. He continues his daily routine each day and day by day 46 days pass by before anything eventful happens.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 11,
      ),
    ],
  ),
  GameData(
    id: 11,
    text: '''Traversing through space his ship suddenly gets hit by some space debris that sends his ship into a loud alarming sound with the central computer alerting him repeatedly that there has been an unexpected impact in the rear left end of the ship. Shuvo approaches the control and turns off the alarms to take a better look at the impact data displayed on the console. Seeing as the debris has done a bit of damage to the ship, Shuvo needs to take a decision on what to do about this issue.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 12,
      ),
    ],
  ),
  GameData(
    id: 12,
    text: '''Looking at the console he finds the damage doesn’t seem to be too severe, or at least the initial diagnosis doesn’t show anything like that. Moreover, while the collision was unexpected, these ships are built to withstand some impacts in space. With these in mind Shuvo now has to pick between,''',
    options: [
      Option(
        id: 1,
        text: ' Send a Repair Drone.',
        gameDataId: -1,
      ),
      Option(
        id: 2,
        text: 'Space Walk & Attempt Repair',
        gameDataId: 13,
      ),
      Option(
        id: 3,
        text: 'Do Nothing',
        gameDataId: 14,
      ),
    ],
  ),
  GameData(
    id: 13,
    text: '''Shuvo gets into his space-suit and takes the preparations to go out and check the damage himself as it wouldn’t be wise to set the ship up for any failure this early on in the mission. Once prepared he exits the ship and moves towards the impact area. As he was examining the damage, suddenly another debri hit his helmet causing the breathing system of the suit to fail. He also faced a sudden steep decrease in pressure. He wanted to get back to the space ship but the damage of the helmet was too much. ''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 0,
      ),
    ],
  ),
  GameData(
    id: 14,
    text: '''Shuvo decides that the damage is not too severe and it can be dealt with later if it seems necessary. For now he puts the warnings aside, instructs the computer to run a deeper diagnosis and goes on with his daily routine. Next morning Shuvo finds the report from the deeper diagnosis and learns that no crucial component had been damaged and the fallback systems have the rest handled for now. This sets his mind at peace and allows him to focus on his space time hobbies and activities. Often times he spends looking out the window getting nostalgic throwbacks to when he was only a child learning about the things he is seeing from colorful books his dad brought for him''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 15,
      ),
    ],
  ),
  GameData(
    id: 15,
    text: '''Days and weeks kept going by and soon 3 months had passed since Shuvo had left Earth for his mission to Trappist - 1e. One day Shuvo noticed that something was getting abnormally large. Initially he wrote it off as another chunk of space debris his radar couldn’t pick up on. But soon he realized it was a brown dwarf star which the mission control had no idea of.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 16,
      ),
    ],
  ),
  GameData(
    id: 16,
    text: '''Facing this situation he now can decide to take an action or stay on the current path. The current path just misses the star by a narrow margin. He has 3 options he can take.''',
    options: [
      Option(
        id: 1,
        text: 'Use the Dwarf Star as a Sling Shot',
        gameDataId: 17,
      ),
      Option(
        id: 2,
        text: 'Try to Laser it out.',
        gameDataId: -1,
      ),
      Option(
        id: 3,
        text: 'Stay on the Current Path.',
        gameDataId: -1,
      ),
    ],
  ),
  GameData(
    id: 17,
    text: '''After successfully slingshotting by using the dwarf stars’ gravitational pull, his ship continues onto the accounted trajectory for Trapist - 1e. The Trapist System is not too far away when compared to when he started as he only has about 3.5 months of travel left. He was done with 50% of his path to reach the target planet.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 18,
      ),
    ],
  ),
  GameData(
    id: 18,
    text: '''More Traverse story for 2 months''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 19,
      ),
    ],
  ),
  GameData(
    id: 19,
    text: '''Shuvo now faces an unexpected situation where he seems to have used too much fuel and the ship is giving him a heads up that the amount of fuel left has fallen behind the safe threshold. At this rate he will not have enough fuel left to safely land on the planet if he faces any more obstacles on the way. Shuvo is faced with yet another crucial decision for his mission on how to deal with his low fuel status.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 20,
      ),
    ],
  ),
  GameData(
    id: 20,
    text: '''Shuvo has the following choices,''',
    options: [
      Option(
        id: 1,
        text: 'Request for Resupply Probe',
        gameDataId: 21,
      ),
      Option(
        id: 1,
        text: 'Try to look for large mass objects to Slingshot.',
        gameDataId: -1,
      ),
      Option(
        id: 1,
        text: ' Accelerate so that he can reach the destination faster.',
        gameDataId: -1,
      ),
    ],
  ),
  GameData(
    id: 21,
    text: '''Shuvo decides its safest to request the resupply probe and wait till it arrives here in 3 weeks. He must also allocate space in the probe for his 3 weeks worth of food. Shuvo sends the resupply request to the International Space Station and instructs his ships navigation to slow down the ship to a stop while preparing himself mentally for 3 extra weeks before he can reach his destination''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 22,
      ),
    ],
  ),
  GameData(
    id: 22,
    text: '''Fortunately nothing bad happens while he waits out the 3 weeks and the resupply probe reaches Shuvo successfully delivering him the extra food and fuel required for the rest of his mission. With his ship refuelled Shuvo starts accelerating again on his trajectory for Trapist - 1e''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 23,
      ),
    ],
  ),
  GameData(
    id: 23,
    text: '''With only 1.5 months left to his journey to the target planet, Shuvo finds himself again growing the excitement of when he first started on this mission. He starts completing the small preparation steps each day while marking out each day on his calendar as he approaches the Trapist System. Finally the day comes and Shuvo arrives at the target planetary system with his destination planet now visible. He looks at it with a mix of shock and awe as it feels like he has gone back to Earth, but with a different map than the one he left.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 24,
      ),
    ],
  ),
  GameData(
    id: 24,
    text: '''Upon reaching close distances of Trapist - 1e, he takes the final preparations to land on the planet.''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 25,
      ),
    ],
  ),
  GameData(
    id: 25,
    text: '''Shuvo has the following choices:''',
    options: [
      Option(
        id: 1,
        text: 'Directly land on trappist 1e',
        gameDataId: 26,
      ),
      Option(
        id: 2,
        text: 'Orbit trappist 1e at a safe distance',
        gameDataId: -1,
      ),
      Option(
        id: 3,
        text: 'Set the probe in a circular orbit around trappist 1e & land it',
        gameDataId: 27,
      ),
    ],
  ),
  GameData(
    id: 26,
    text: '''Since he wanted to land on trappist 1e directly, he entered in the atmosphere with a very high speed. Because of the friction of atmosphere, the probe heated upto an unbearable temperature and hit the ground very hard. ''',
    options: [
      Option(
        id: 1,
        text: 'Start Over',
        gameDataId: 1,
      ),
    ],
  ),
  GameData(
    id: 27,
    text: '''Since he decided to go into a circular orbit 1st and then land, he could control the speed at which he would be landing and so his probe did not have hard impact. The landing sequence was successful!!!''',
    options: [
      Option(
        id: 1,
        text: 'Next',
        gameDataId: 28,
      ),
    ],
  ),
  GameData(
    id: 28,
    text: '''Shuve got out of the probe with a pumping heart. he was expecting to witness the unexpected. He could feel all the adrenaline pumping. With steady feet, he got out and to his surprise, it felt like he returned to earth. the trees, land, sky everything felt just like home. He started roaming around and feel the gentle breeze. Suddenly he heard a sound. I came from the other side of the field he was standing on. For the very 1st time, shuvo got scared. What could it be? He took a stick and started walking towards yet another unknown challenge...''',
    options: [
      Option(
        id: 1,
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
