import 'dart:async';

import 'package:flutter/services.dart';

class SystemBootTime {
  static const MethodChannel _channel = MethodChannel('system_boot_time');

  static Future<num> get seconds async {
    try {
      final num seconds = await _channel.invokeMethod('getSystemBootTime');
      return seconds;
    } catch (_) {}
    return 0;
  }
}
