import 'package:flutter/material.dart';
import 'package:pokedex/app.dart';

class PColor {
  // Singleton instance
  static final PColor _instance = PColor._internal();

  // Factory constructor returns the same instance
  factory PColor() => _instance;

  // Private constructor
  PColor._internal();

  // Define colors with default values
  Color primary = const Color(0xffFF0000);
  Color secondary = const Color(0xffFFCF71);
  Color success = const Color(0xFF4BAC87);
  Color info = const Color(0xFF05BFDB);
  Color warning = const Color(0xFFFFD93D);
  Color danger = const Color(0xFFBE3D3D);
  Color disabled = const Color(0xFFDCDEE7);
  Color white = const Color(0xFFFFFFFF);
  Color main = const Color(0xFF2E3261);
  Color black = const Color(0xFF151316);
  Color grey = const Color(0xff8288A2);
  Color softGrey = const Color(0xff8F95B2);
  Color orange = const Color(0xffE8A01D);
  Color limeGreen = const Color(0xff4BAC87);
  Color brown = const Color(0xff66460D);

  /// Listen to theme mode so white and black based on the theme mode
  Color get blackWhite {
    if (appRouter.navigatorKey.currentState != null) {
      return Theme.of(appRouter.navigatorKey.currentState!.context).brightness == Brightness.dark ? white : black;
    }
    return black;
  }

  Color get containerColor {
    if (appRouter.navigatorKey.currentState != null) {
      return Theme.of(appRouter.navigatorKey.currentState!.context).brightness == Brightness.dark ? const Color(0xff26262b) : white;
    }
    return white;
  }

  Color get backgroundColor {
    if (appRouter.navigatorKey.currentState != null) {
      return Theme.of(appRouter.navigatorKey.currentState!.context).brightness == Brightness.dark ? const Color(0xff121212) : Colors.white;
    }
    return const Color(0xffF8FAFC);
  }
  Color get chatBackgroundColor {
    if (appRouter.navigatorKey.currentState != null) {
      return Theme.of(appRouter.navigatorKey.currentState!.context).brightness == Brightness.dark ? const Color(0xff1E1E1E) : const Color(0xffF4F6F8);
    }
    return const Color(0xffF4F6F8);
  }

  Color get greyDark {
    if (appRouter.navigatorKey.currentState != null) {
      return Theme.of(appRouter.navigatorKey.currentState!.context).brightness == Brightness.dark ? const Color(0xffB0B3C1) : const Color(0xff8288A2);
    }
    return grey;
  }
}