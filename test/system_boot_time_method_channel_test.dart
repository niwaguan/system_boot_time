import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_boot_time/system_boot_time_method_channel.dart';

void main() {
  MethodChannelSystemBootTime platform = MethodChannelSystemBootTime();
  const MethodChannel channel = MethodChannel('system_boot_time');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
