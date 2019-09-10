import 'dart:async';

import 'package:flutter/services.dart';

class Dkwebview {
  static const MethodChannel _channel =
      const MethodChannel('dkwebview');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
