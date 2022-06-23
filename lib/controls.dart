import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Controls extends StatefulWidget {
  const Controls({Key key}) : super(key: key);

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
    return PageView(
      controller: controller,
      onPageChanged: (i)=> setState(()=> currentIndex=i),
      children: [
        _ControlItem(title: 'Option 1', index: 0, currentIndex: currentIndex),
        _ControlItem(title: 'Option 2', index: 1, currentIndex: currentIndex),
        _ControlItem(title: 'Option 3', index: 2, currentIndex: currentIndex),
      ],
    );
  }
}



class _ControlItem extends StatelessWidget {
  const _ControlItem({Key key, @required this.title, this.onTap, @required this.index, this.currentIndex}) : super(key: key);
  final String title;
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
            title,
            style: const TextStyle(color: Color(0xff00FFCD), fontSize: 24),
          ),
        ),
      ),
    );
  }
}