import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((_) => colorList);

final isDarkModeProvider = StateProvider((_) => false);

final selectedColorProvider = StateProvider((_) => 0);
