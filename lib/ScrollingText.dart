import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ScrollingText extends StatefulWidget {
  const ScrollingText({Key key}) : super(key: key);

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
    String dummyText =
        '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque in dictum non consectetur a erat nam at lectus. Nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Congue mauris rhoncus aenean vel. Bibendum neque egestas congue quisque egestas diam in arcu. Scelerisque purus semper eget duis at. Morbi non arcu risus quis varius quam. Platea dictumst quisque sagittis purus sit amet volutpat consequat mauris. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Velit sed ullamcorper morbi tincidunt. Ac auctor augue mauris augue. Diam sit amet nisl suscipit adipiscing bibendum.

Faucibus in ornare quam viverra. Neque gravida in fermentum et sollicitudin ac orci phasellus. Laoreet suspendisse interdum consectetur libero id faucibus nisl. Lacinia quis vel eros donec ac odio tempor orci dapibus. Nulla posuere sollicitudin aliquam ultrices sagittis orci a. Id interdum velit laoreet id donec ultrices tincidunt arcu. Tortor at auctor urna nunc. Sem et tortor consequat id porta nibh venenatis. At in tellus integer feugiat scelerisque varius morbi enim nunc. Quis hendrerit dolor magna eget est lorem. Ut pharetra sit amet aliquam id diam maecenas. Gravida neque convallis a cras.

Dui faucibus in ornare quam viverra orci. Purus in mollis nunc sed. Varius quam quisque id diam vel quam. Congue quisque egestas diam in arcu cursus euismod quis viverra. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur. Libero enim sed faucibus turpis in eu mi bibendum neque. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Accumsan lacus vel facilisis volutpat est velit egestas. Eget dolor morbi non arcu risus quis varius quam quisque. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Nulla facilisi etiam dignissim diam quis enim. Iaculis urna id volutpat lacus laoreet. Morbi quis commodo odio aenean sed adipiscing diam donec adipiscing. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Nulla at volutpat diam ut. Sed ullamcorper morbi tincidunt ornare massa eget. Vitae elementum curabitur vitae nunc.

Viverra nam libero justo laoreet sit amet. Eu non diam phasellus vestibulum. Diam vulputate ut pharetra sit amet aliquam id diam maecenas. Feugiat nisl pretium fusce id velit ut tortor pretium. Non curabitur gravida arcu ac tortor dignissim convallis. Mauris pharetra et ultrices neque ornare. Suspendisse in est ante in nibh. Quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. In vitae turpis massa sed elementum. Purus non enim praesent elementum facilisis. Tristique sollicitudin nibh sit amet. Feugiat vivamus at augue eget arcu dictum varius duis. Cras sed felis eget velit aliquet sagittis. Nullam vehicula ipsum a arcu cursus vitae congue mauris. Praesent tristique magna sit amet purus. Nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut.

Quisque sagittis purus sit amet volutpat consequat. Sit amet porttitor eget dolor morbi non arcu risus. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Faucibus interdum posuere lorem ipsum dolor sit. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. Blandit cursus risus at ultrices mi tempus imperdiet nulla malesuada. Gravida cum sociis natoque penatibus et. Non enim praesent elementum facilisis. Posuere ac ut consequat semper viverra nam libero justo laoreet. Neque sodales ut etiam sit amet nisl purus. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. Est pellentesque elit ullamcorper dignissim cras. Non tellus orci ac auctor. Est ullamcorper eget nulla facilisi etiam dignissim diam. Faucibus a pellentesque sit amet. Id eu nisl nunc mi ipsum faucibus vitae. Ligula ullamcorper malesuada proin libero nunc.''';
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
              child: AnimatedTextKit(
                repeatForever: false,
                stopPauseOnTap: true,
                animatedTexts: [
                  TypewriterAnimatedText(dummyText, textStyle: const TextStyle(color: Color(0xff00FFCD), fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.red,
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
