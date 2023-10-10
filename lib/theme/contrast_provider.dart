import 'package:bookapp/preferences/user_preferences.dart';
import 'package:flutter/material.dart';

/// Only available for AMOLED as of Now.
class TextContrastProvider with ChangeNotifier {
  TextContrastProvider(this._userPreferences);

  final UserPreferences _userPreferences;

  /// Get Current Contrast Level
  String get currentContrastLevel => _userPreferences.currentContrastLevel;

  Future<void> setContrast(String value) async {
    await _userPreferences.setContrastScheme(value);
    notifyListeners();
  }
}
