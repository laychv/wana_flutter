import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformManage {
  PlatformManage._internal();

  factory PlatformManage() => _instance;
  static late final PlatformManage _instance = PlatformManage._internal();

  void android() {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle style = const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light);
      SystemChrome.setSystemUIOverlayStyle(style);
    }
  }

  void ios() {}

  void web() {}
}
