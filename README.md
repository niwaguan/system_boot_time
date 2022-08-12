# system_boot_time

A Flutter Plugin for getting system boot time.

## Getting Started

Add `system_boot_time` as a dependency in your pubspec.yaml file. Just run:

```dart
flutter pub add system_boot_time
```

Next, import as you need.

```dart
import 'package:system_boot_time/system_boot_time.dart';
```

And then just have fun:

```dart
final second = await SystemBootTime().second();
```