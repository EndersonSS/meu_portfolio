import 'package:flutter/cupertino.dart'; 
import 'package:meu_portfolio/provider/theme_preference.dart';

class ThemeProvider extends ChangeNotifier {
  ThemePreference darkThemePref = ThemePreference();
  ScrollController scrollController = ScrollController();

  get scroll => scrollController;

  set scroll(dynamic i) {
    scrollController.animateTo(
      i == 0 ? 100 : 0,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  // App Theme
  bool _lightTheme = false;
  bool get lightTheme => _lightTheme;

  set lightTheme(bool value) {
    _lightTheme = value;
    darkThemePref.setDarkTheme(value);

    notifyListeners();
  }
}
