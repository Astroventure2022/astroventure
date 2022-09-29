import 'package:flutter_tts/flutter_tts.dart';

class Speaker{
  Speaker();

  FlutterTts flutterTts = FlutterTts();

  Future speak(String text) async{
    if(text==null) return;
    var result = await flutterTts.speak(text);
  }
}