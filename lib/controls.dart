import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'game_controller.dart';
import 'gamedata.dart';

class Controls extends StatefulWidget {
  const Controls({Key key, @required this.controller}) : super(key: key);
  final GameController controller;

  @override
  State<Controls> createState() => _ControlsState();
}

class _ControlsState extends State<Controls> {
  PageController controller;
  int currentIndex = 1;

  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.3,
      initialPage: currentIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<GameData>(
      valueListenable: widget.controller.currentData,
      builder: (context, data, _) {
        return PageView(
          controller: controller,
          onPageChanged: (i)=> setState(()=> currentIndex=i),
          children: List.generate(data.options.length, (i) => _ControlItem(option: data.options[i], index: i, currentIndex: currentIndex, onTap: (){
            List<String> temp = widget.controller.texts.value;
            temp.add(gameData[0].text);
            widget.controller.texts.value = [];
            widget.controller.texts.value = temp;
          },)),
        );
      }
    );
  }
}



class _ControlItem extends StatelessWidget {
  const _ControlItem({Key key, @required this.option, @required this.controller, this.onTap, @required this.index, this.currentIndex}) : super(key: key);
  final Option option;
  final GameController controller;
  final VoidCallback onTap;
  final int index;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        if(index==currentIndex){
          HapticFeedback.heavyImpact();
          if (onTap != null) onTap();
        }
      },
      child: Opacity(
        opacity: index==currentIndex?1:0.2,
        child: Center(
          child: Text(
            option.text,
            style: const TextStyle(color: Color(0xff00FFCD), fontSize: 24),
          ),
        ),
      ),
    );
  }
}