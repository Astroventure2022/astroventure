import 'package:astroventure/colors.dart';
import 'package:astroventure/guide/categories.dart';
import 'package:astroventure/tts.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import '../slider_control.dart';
import 'gamedata.dart';

class GuidesPage extends StatefulWidget {
  const GuidesPage({Key key, @required this.speaker}) : super(key: key);
  final Speaker speaker;

  @override
  State<GuidesPage> createState() => _GuidesPageState();
}

class _GuidesPageState extends State<GuidesPage> {

  List<ControlOption> options = [];
  Guide currentGuide;

  void onSelect(ControlOption c){
    var selectedGuide = guides.firstWhere((element) => element.id==c.id);
    Navigator.push(context, MaterialPageRoute(builder: (context) => GuideCategoriesPage(
      guide: selectedGuide,
      speaker: widget.speaker,
    )));
  }

  void onChange(ControlOption c){
    setState(() {
      currentGuide = guides.firstWhere((element) => element.id==c.id);
    });
    widget.speaker.speak(c.title);
  }

  void readAll(ControlOption c){
    if(currentGuide==null) return;
    var text = "";
    for(var c in currentGuide.categories){
      text += "${c.title}. ";
    }
    widget.speaker.speak(text);
  }

  @override
  void initState() {
    for (var c in guides) {
      options.add(ControlOption(id: c.id, title: c.title));
    }
    currentGuide = guides.first;
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) { })
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: SafeArea(
        child: Column(
            children: [
              const Hero(
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
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${currentGuide.title}:',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                          ),
                        ),
                        const SizedBox(height: 14),
                        ...List.generate(currentGuide.categories.length, (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            '${index+1}. ${currentGuide.categories[index].title}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SliderControl(
                  options: options,
                  onSelect: onSelect,
                  onChange: onChange,
                  onTap: readAll,
                ),
              ),
            ]
        ),
      ),
    );
  }
}
