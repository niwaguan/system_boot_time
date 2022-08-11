import 'package:flutter_test/flutter_test.dart';
import 'package:system_boot_time/system_boot_time.dart';
import 'package:system_boot_time/system_boot_time_platform_interface.dart';
import 'package:system_boot_time/system_boot_time_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSystemBootTimePlatform 
    with MockPlatformInterfaceMixin
    implements SystemBootTimePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SystemBootTimePlatform initialPlatform = SystemBootTimePlatform.instance;

  test('$MethodChannelSystemBootTime is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSystemBootTime>());
  });

  test('getPlatformVersion', () async {
    SystemBootTime systemBootTimePlugin = SystemBootTime();
    MockSystemBootTimePlatform fakePlatform = MockSystemBootTimePlatform();
    SystemBootTimePlatform.instance = fakePlatform;
  
    expect(await systemBootTimePlugin.getPlatformVersion(), '42');
  });
}
