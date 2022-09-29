import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class ScrollingText extends StatefulWidget {
  const ScrollingText({Key key, @required this.text, this.onDone}) : super(key: key);
  final String text;
  final VoidCallback onDone;

  @override
  State<ScrollingText> createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText> with TickerProviderStateMixin {
  ScrollController _scrollController;
  Timer timer;
  final Duration duration = const Duration(milliseconds: 300);

  _scroll() {
    double maxExtent = _scrollController.position.maxScrollExtent;
    _scrollController.animateTo(maxExtent, duration: duration, curve: Curves.linear);
  }

  startTimer() {
    timer = Timer.periodic(duration, (_) => {_scroll()});
  }

  cancelTimer() {
    if (timer.isActive) {
      timer.cancel();
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => startTimer());
  }

  @override
  void dispose() {
    cancelTimer();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Listener(
          onPointerDown: (_) {
            cancelTimer();
          },
          onPointerUp: (_) {
            if (_scrollController.position.pixels > _scrollController.position.maxScrollExtent - 150) startTimer();
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 100),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedTextKit(
                repeatForever: false,
                isRepeatingAnimation: false,
                // displayFullTextOnTap: true,
                // onTap: (){
                //   _scroll();
                //   widget.controller.isAnimating.value = false;
                // },
                onFinished: (){
                  if(widget.onDone!=null) widget.onDone();
                },
                animatedTexts: [
                  TypewriterAnimatedText(
                    widget.text,
                    textStyle: const TextStyle(color: CustomColors.primary, fontSize: 18),
                    speed: const Duration(milliseconds: 10),
                  ),
                ],
              )
            ),
          ),
        ),
        Container(
          height: 100,
          decoration:  BoxDecoration(
              gradient: CustomColors.fadeGradient
          ),
        ),
      ],
    );
  }
}
