import 'package:flutter/services.dart';

import '../../../../core/templates/base_controller.dart';

class HomeController extends BaseController {
 static const platform = MethodChannel('samples.flutter.dev/battery');
  String batteryLevel = 'Unknown battery level.';

  Future<void> getBatteryLevel() async {
    try {
      startLoading();
      final int? result = await platform.invokeMethod<int>('getBatteryLevel');
      stopLoading();
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    notifyListeners();
  }
}