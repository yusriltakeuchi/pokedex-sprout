import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/config/app_config.dart';
import 'package:pokedex/theme/theme.dart';

// Text Theme
class Style {

  // Singleton instance
  static final Style _instance = Style._internal();

  // Factory constructor returns the same instance
  factory Style() => _instance;

  // Private constructor
  Style._internal();

  TextStyle title = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.blackWhite,
    fontWeight: FontWeight.w600,
  );

  TextStyle semiTitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.blackWhite,
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.blackWhite,
  );

  TextStyle subtitleLight = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.blackWhite,
    fontWeight: FontWeight.w100,
  );

}