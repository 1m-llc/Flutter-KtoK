import 'package:flutter/material.dart';

class AppThemeDataNotifier extends ChangeNotifier {
  AppThemeDataNotifier() : _isDark = false;
  bool get isDark => _isDark;
  bool _isDark;

  ThemeData buildTheme() => _isDark ? ThemeData.dark() : ThemeData.light();

  void changeThemeData() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

