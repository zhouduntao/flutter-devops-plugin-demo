
import 'dart:async';

import 'package:flutter/services.dart';

class Plugindemo {
  static const MethodChannel _channel =
      const MethodChannel('plugindemo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
