import 'dart:async';
import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:astroventure/gamedata.dart';
import 'package:astroventure/utils.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'game_controller.dart';

class ScrollingText extends StatefulWidget {
  const ScrollingText({Key key, @required this.controller}) : super(key: key);
  final GameController controller;

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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: ValueListenableBuilder<List<String>>(
                  valueListenable: widget.controller.texts,
                  builder: (context, texts, widget) {
                    return Column(
                      children: List.generate(texts.length, (i) => AnimatedTextKit(
                        repeatForever: false,
                        isRepeatingAnimation: false,
                        animatedTexts: [TypewriterAnimatedText(texts[i], textStyle: const TextStyle(color: CustomColors.text, fontSize: 18))],
                      )),
                    );
                  }),
            ),
          ),
        ),
        Container(
          height: 100,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color(0xff272324),
                Color(0x00272324),
              ],
              stops: [0.1, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}
