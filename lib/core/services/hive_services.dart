import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static Future<void> initHive() async {
    await Hive.initFlutter();
    await openBoxes();
  }

  static Future<void> openBoxes() async {
    await Hive.openBox(settingsBox);
  }

  static String settingsBox = 'settingsBox';
}
