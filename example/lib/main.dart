import 'dart:async';

import 'package:flutter/material.dart';
import 'package:system_boot_time/system_boot_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num _bootTime = 0;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    num bootTime = await SystemBootTime.seconds;
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _bootTime = bootTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            IconButton(
              onPressed: () {
                initPlatformState();
              },
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
        body: Center(
          child: Text('system boot time: $_bootTime\n'),
        ),
      ),
    );
  }
}
