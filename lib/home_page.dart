import 'package:astroventure/bluetooth.dart';
import 'package:astroventure/guide_page.dart';
import 'package:astroventure/slider_control.dart';
import 'package:astroventure/tts.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'game_page.dart';
import 'start_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ControlOption> options = [
    ControlOption(
      id: 1,
      title: "Play",
    ),
    ControlOption(id: 2, title: "Guides")
  ];

  Bluetooth bluetooth;
  Speaker speaker;

  void initState() {
    bluetooth = Bluetooth();
    speaker = Speaker(bluetooth: bluetooth);
    bluetooth.connect();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/BG.png", fit: BoxFit.cover),
            Hero(tag: 'title', child: Image.asset("assets/images/Title.png", fit: BoxFit.contain)),
            Column(children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(child: Container()),
              Expanded(
                child: SliderControl(
                  options: options,
                  onSelect: (c) {
                    if (c.id == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StartPage(speaker: speaker,)));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GuidesPage(
                                    speaker: speaker,
                                  )));
                    }
                  },
                  onChange: (c) {
                    Speaker speaker = Speaker();
                    speaker.speak(c.title);
                  },
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
