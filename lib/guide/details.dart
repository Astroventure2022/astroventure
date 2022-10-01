import 'package:astroventure/scrolling_text.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../slider_control.dart';
import '../tts.dart';

class GuideDetailsPage extends StatefulWidget {
  const GuideDetailsPage({Key key, @required this.category, @required this.speaker}) : super(key: key);
  final GuideCategory category;
  final Speaker speaker;

  @override
  State<GuideDetailsPage> createState() => _GuideDetailsPageState();
}

class _GuideDetailsPageState extends State<GuideDetailsPage> {

  GuideItem selectedGuide;
  List<ControlOption> options = [];

  @override
  void initState() {
    if(widget.category?.items!=null){
      for(var c in widget.category.items){
        options.add(ControlOption(id: c.id, title: c.title));
      }
      selectedGuide = widget.category.items.first;
    }
    super.initState();
  }

  void onChange(ControlOption c){
    setState(() {
      selectedGuide = widget.category.items.firstWhere((element) => element.id==c.id);
    });
    widget.speaker.speak(selectedGuide.title);
  }

  void readDetail(ControlOption c){
      selectedGuide = widget.category.items.firstWhere((element) => element.id==c.id);
      widget.speaker.speak(selectedGuide.text);
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        child: Text(
                          '${selectedGuide.title}:',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                      ScrollingText(text: selectedGuide.text, textColor: Colors.white, key: Key(selectedGuide.text),)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SliderControl(
                  options: options,
                  onSelect: (c){},
                  onChange: onChange,
                  onTap: readDetail,
                ),
              ),
            ]
        ),
      ),
    );
  }
}
