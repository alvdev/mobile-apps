import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contradefensa/config/theme/brand_colors.dart';

class AppTheme {
  AppTheme._();

  static final text = TextTheme(
    displaySmall: TextStyle(fontSize: 16),
    displayMedium: TextStyle(fontSize: 24),
    displayLarge: TextStyle(fontSize: 36),
  );
  
  static const darkColorScheme = ColorScheme.dark(
    primary: AppColor.white,
    onPrimary: AppColor.teal700,
    secondary: AppColor.green700,
    onSecondary: AppColor.yellow300,
    surface: AppColor.black700,
    onSurface: AppColor.white900,
    error: AppColor.red700,
    onError: AppColor.red300,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    colorScheme: darkColorScheme,
    canvasColor: darkColorScheme.surface,
    scaffoldBackgroundColor: darkColorScheme.surface,
    fontFamily: GoogleFonts.inconsolata(fontWeight: FontWeight.w600).fontFamily,
    textTheme: AppTheme.text,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.red700,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Color.fromRGBO(255, 142, 49, 0.847),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor:
            WidgetStatePropertyAll(Colors.cyan.shade400.withOpacity(0.9)),
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        elevation: WidgetStatePropertyAll(30),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
      ),
    ),
  );
  
}
