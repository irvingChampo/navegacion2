import 'package:navegacion2/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:navegacion2/myapp.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}
