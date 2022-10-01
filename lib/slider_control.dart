import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils.dart';

class SliderControl extends StatefulWidget {
  const SliderControl({Key key, @required this.options, this.onChange, @required this.onSelect, this.onTap}) : super(key: key);
  final List<ControlOption> options;
  final ValueChanged<ControlOption> onChange;
  final ValueChanged<ControlOption> onSelect;
  final ValueChanged<ControlOption> onTap;

  @override
  State<SliderControl> createState() => _SliderControlState();
}

class _SliderControlState extends State<SliderControl> {

  PageController controller;

  onPageChange(int i){
    int index = i%widget.options.length;
    if(widget.onChange!=null) widget.onChange(widget.options[index]);
  }

  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.52,
      initialPage: widget.options.length * 50,
    );
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onPageChange(controller.initialPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    if(widget.options.isNotEmpty) {
      return PageView.builder(
        controller: controller,
        physics: const BouncingScrollPhysics(),
        onPageChanged: onPageChange,
        itemBuilder: (context,i){
          int index = i%widget.options.length;
          return _ControlItem(
            option: widget.options[index],
            onDoubleTap: ()=> widget.onSelect(widget.options[index]),
            onTap: (){
              if(widget.onTap!=null) widget.onTap(widget.options[index]);
            },
          );
        },
      );
    }
    return Container();
  }
}

class _ControlItem extends StatelessWidget {
  const _ControlItem({Key key, @required this.option, this.onTap, this.onDoubleTap}) : super(key: key);
  final ControlOption option;
  final VoidCallback onTap;
  final VoidCallback onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.heavyImpact();
        if(onTap!=null) onTap();
      },
      onDoubleTap: () {
        HapticFeedback.heavyImpact();
        if(onDoubleTap!=null) onDoubleTap();
      },
      child: Container(
        color: Colors.transparent,
        child: Opacity(
          opacity: 1,
          child: Center(
            child: Text(
              option.title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color(0xff00FFCD), fontSize: 28,),
            ),
          ),
        ),
      ),
    );
  }
}