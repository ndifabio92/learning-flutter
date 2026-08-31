import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6200EE);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'selectedColor must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      useMaterial3: true,
    );
  }
}
