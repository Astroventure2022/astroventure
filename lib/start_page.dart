import 'package:astroventure/gamedata.dart';
import 'package:astroventure/scrolling_text.dart';
import 'package:astroventure/tts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'game_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key key, @required this.speaker}) : super(key: key);
  final Speaker speaker;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  bool briefDone = false;

  void startGame(context){
    HapticFeedback.heavyImpact();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GamePage(
      missionName: missionTitle,
      missionBrief: missionBrief,
      credit: credit,
      features: features,
      speaker: widget.speaker
    )));
  }

  @override
  void initState() {
    super.initState();
    widget.speaker.speak('$missionTitle. $missionBrief');
  }

  @override
  void dispose() {
    widget.speaker.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Image.asset('assets/images/visual.png'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Hero(
                    tag: "missionName",
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        missionTitle,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(child: ScrollingText(text: missionBrief, onDone: (){
                    setState(()=> briefDone = true);
                  },))
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => widget.speaker.speak('Start!'),
                onDoubleTap: ()=> startGame(context),
                child: briefDone?const Center(
                  child: Text(
                    'START',
                    style: TextStyle(
                      color: CustomColors.accent,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ),
                ):const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
