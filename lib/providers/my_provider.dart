import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:islamic_app/my_theme/my_theme.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode =
      ((SchedulerBinding.instance.platformDispatcher.platformBrightness) ==
              Brightness.dark)
          ? ThemeMode.dark
          : ThemeMode.light;

  void changeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBackgroundPath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/bg_image.png";
    } else {
      return "assets/images/dark_bg_image.png";
    }
  }

  String getSebhaBodyPath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/body_sebha_logo.png";
    } else {
      return "assets/images/body_sebha_dark.png";
    }
  }

  String getSebhaHeadPath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/head_sebha_logo.png";
    } else {
      return "assets/images/head_sebha_dark.png";
    }
  }

  Color getPrimaryColor() {
    if (themeMode == ThemeMode.light) {
      return MyTheme.primaryColor;
    } else {
      return MyTheme.primaryDarkColor;
    }
  }

  Color getCounterBgTansColor() {
    if (themeMode == ThemeMode.light) {
      return MyTheme.primaryColor.withOpacity(0.57);
    } else {
      return MyTheme.darkBgColor.withOpacity(0.8);
    }
  }

  Color getBgTansColor() {
    if (themeMode == ThemeMode.light) {
      return Colors.white.withOpacity(0.8);
    } else {
      return MyTheme.darkBgColor.withOpacity(0.8);
    }
  }
}
