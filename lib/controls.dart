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

  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.3,
      initialPage: 0,
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
        // if(controller.hasClients) controller.jumpToPage(0);
        return ValueListenableBuilder<bool>(
          valueListenable: widget.controller.isAnimating,
          builder: (context, animating, _) {
            if(!animating) {
              return PageView(
                controller: controller,
                // onPageChanged: (i)=> setState(()=> currentIndex=i),
                children: List.generate(
                  data.options.length,
                      (i) => _ControlItem(
                    option: data.options[i],
                    index: i,
                    // currentIndex: currentIndex,
                    controller: widget.controller,),
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        );
      }
    );
  }
}



class _ControlItem extends StatelessWidget {
  const _ControlItem({Key key, @required this.option, @required this.controller, this.onTap, @required this.index}) : super(key: key);
  final Option option;
  final GameController controller;
  final VoidCallback onTap;
  final int index;
  // final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        HapticFeedback.heavyImpact();

        controller.isAnimating.value = true;

        List<String> temp = controller.texts.value;

        GameData selectedGameData = gameData.firstWhere((element)=> element.id==option.gameDataId);

        // if(selectedGameData.id==1) temp = [];
        temp.add(selectedGameData.text);
        controller.texts.value = [];
        controller.texts.value = temp;
        controller.currentData.value = selectedGameData;
      },
      child: Opacity(
        opacity: 1,
        child: Center(
          child: Text(
            option.text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xff00FFCD), fontSize: 24,),
          ),
        ),
      ),
    );
  }
}