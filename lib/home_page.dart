import 'package:astroventure/guide_page.dart';
import 'package:astroventure/slider_control.dart';
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
    ControlOption(id: 1, title: "Play", ),
    ControlOption(id: 2, title: "Guides")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Hero(
                tag: 'title',
                child: Material(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Text(
                      "Astroventure",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Expanded(
              child: SliderControl(
                options: options,
                onSelect: (c){
                  if(c.id==1){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const StartPage()));
                  } else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const GuidesPage()));
                  }
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}
