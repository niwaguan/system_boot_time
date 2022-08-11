import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'system_boot_time_platform_interface.dart';

/// An implementation of [SystemBootTimePlatform] that uses method channels.
class MethodChannelSystemBootTime extends SystemBootTimePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_boot_time');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
