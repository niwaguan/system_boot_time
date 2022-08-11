
import 'system_boot_time_platform_interface.dart';

class SystemBootTime {
  Future<String?> getPlatformVersion() {
    return SystemBootTimePlatform.instance.getPlatformVersion();
  }
}
