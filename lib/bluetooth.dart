import 'dart:convert';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class Bluetooth{
  Bluetooth();

  final FlutterBluetoothSerial _bluetooth = FlutterBluetoothSerial.instance;

  BluetoothDevice device;
  BluetoothConnection connection;

  static const String DEVICE_NAME = "Assistive Device";

  dispose(){
    connection.dispose();
    device = null;
  }

  Future connect () async {
    try {
      List<BluetoothDevice> devices = await _bluetooth.getBondedDevices();
      device = devices?.firstWhere((element) => element.name == DEVICE_NAME);
      if(device!=null){
        connection = await BluetoothConnection.toAddress(device.address);
      }
    } catch(e){
      print(e);
    }
  }

  void sendToDevice(String text) {
    if(!(connection?.isConnected??false)) return;
    connection.output.add(utf8.encode(text));
  }
}