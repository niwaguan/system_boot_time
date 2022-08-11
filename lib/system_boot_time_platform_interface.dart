import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'system_boot_time_method_channel.dart';

abstract class SystemBootTimePlatform extends PlatformInterface {
  /// Constructs a SystemBootTimePlatform.
  SystemBootTimePlatform() : super(token: _token);

  static final Object _token = Object();

  static SystemBootTimePlatform _instance = MethodChannelSystemBootTime();

  /// The default instance of [SystemBootTimePlatform] to use.
  ///
  /// Defaults to [MethodChannelSystemBootTime].
  static SystemBootTimePlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SystemBootTimePlatform] when
  /// they register themselves.
  static set instance(SystemBootTimePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
