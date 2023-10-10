// ignore_for_file: constant_identifier_names

import 'package:bookapp/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends ChangeNotifier {
  UserPreferences._shared(final SharedPreferences sharedPreferences)
      : _sharedPreferences = sharedPreferences {}

  /// Singleton
  static UserPreferences? _instance;
  final SharedPreferences _sharedPreferences;

  static Future<UserPreferences> getUserPreferences() async {
    if (_instance == null) {
      final SharedPreferences preferences =
          await SharedPreferences.getInstance();
      _instance = UserPreferences._shared(preferences);
    }

    return _instance!;
  }

  late ValueNotifier<bool> onCrashReportingChanged;
  late ValueNotifier<bool> onAnalyticsChanged;

  /// Whether the preferences are empty or not

  /// The current version of preferences

  static const String _TAG_CURRENT_THEME_MODE = 'currentThemeMode';
  static const String _TAG_CURRENT_COLOR_SCHEME = 'currentColorScheme';
  static const String _TAG_CURRENT_CONTRAST_MODE = 'contrastMode';

  static const String _TAG_DEV_MODE = 'devMode';

  Future<void> setTheme(final String theme) async {
    await _sharedPreferences.setString(_TAG_CURRENT_THEME_MODE, theme);
    notifyListeners();
  }

  Future<void> setColorScheme(final String color) async {
    await _sharedPreferences.setString(_TAG_CURRENT_COLOR_SCHEME, color);
    notifyListeners();
  }

  Future<void> setContrastScheme(final String contrastLevel) async {
    await _sharedPreferences.setString(
        _TAG_CURRENT_CONTRAST_MODE, contrastLevel);
    notifyListeners();
  }

  String get currentTheme =>
      _sharedPreferences.getString(_TAG_CURRENT_THEME_MODE) ?? 'System Default';

  String get currentColor =>
      _sharedPreferences.getString(_TAG_CURRENT_COLOR_SCHEME) ??
      COLOR_DEFAULT_NAME;

  String get currentContrastLevel =>
      _sharedPreferences.getString(_TAG_CURRENT_CONTRAST_MODE) ??
      CONTRAST_MEDIUM;

  Future<void> setDevMode(final int value) async {
    await _sharedPreferences.setInt(_TAG_DEV_MODE, value);
    notifyListeners();
  }

  int get devMode => _sharedPreferences.getInt(_TAG_DEV_MODE) ?? 0;

  Future<void> setDevModeString(final String tag, final String value) async {
    await _sharedPreferences.setString(tag, value);
    notifyListeners();
  }

  String? getDevModeString(final String tag) =>
      _sharedPreferences.getString(tag);
}
