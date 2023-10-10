import 'package:bookapp/preferences/user_preferences.dart';
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  ColorProvider(this._userPreferences);

  final UserPreferences _userPreferences;

  /// Get current Color
  String get currentColor => _userPreferences.currentColor;

  /// Set Color
  Future<void> setColor(String value) async {
    await _userPreferences.setColorScheme(value);
    notifyListeners();
  }
}
