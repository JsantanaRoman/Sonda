import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sonda/core/services/hive_services.dart';

Box settingsBox = Hive.box(HiveService.settingsBox);

final audioEnabledProvider = StateProvider<bool>((ref) => true);
