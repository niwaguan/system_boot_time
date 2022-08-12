import 'package:pigeon/pigeon.dart';

/// The class name will used by java class space
@HostApi()
abstract class SystemBootTime {
  /// system boot time by second
  int second();
}
