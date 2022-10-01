import 'package:astroventure/bluetooth.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Speaker{
  final Bluetooth bluetooth;
  Speaker({this.bluetooth});

  bool speaking = false;

  FlutterTts flutterTts = FlutterTts();

  Future speak(String text) async{
    if(text==null) return;
    if(speaking) stop();
    speaking = true;
    bluetooth?.sendToDevice(text);
    var result = await flutterTts.speak(text);
    speaking  = false;
  }

  Future stop() async{
    var result = await flutterTts.stop();
    speaking = false;
  }
}