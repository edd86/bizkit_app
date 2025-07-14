import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static final Color primaryLight = Color(0xFF091738);
  static final Color secondaryLight = Color(0xFF966c9f);
  static final Color tertiaryLight = Color(0xFF9297c3);
  static final Color backgroundLight = Color(0xFFc4c8f7);

  static final Color primaryDark = Color(0xFFc4c8f7);
  static final Color secondaryDark = Color(0xFF9297c3);
  static final Color tertiariDark = Color(0xFF966c9f);
  static final Color backgroundDark = Color(0xFF091738);

  static final double titleSize = 15.sp;
  static final double amountsSize = 13.5.sp;

  ThemeData light(BuildContext context) => ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.comfortaaTextTheme(
      Theme.of(context).textTheme.apply(bodyColor: Color(0xFF364955)),
    ),
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundLight,
      titleTextStyle: GoogleFonts.comfortaa(
        fontWeight: FontWeight.bold,
        color: primaryLight,
        fontSize: 20.sp,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryLight,
      secondary: secondaryLight,
      tertiary: tertiaryLight,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryLight)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(secondaryLight),
        textStyle: WidgetStatePropertyAll(
          TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.sp)),
      ),
      labelStyle: TextStyle(
        color: primaryLight,
        fontWeight: FontWeight.bold,
        fontSize: 13.sp,
      ),
      errorStyle: TextStyle(color: primaryLight),
      filled: true,
      fillColor: tertiaryLight,
      contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
    ),
    cardTheme: CardThemeData(
      elevation: 6.sp,
      shadowColor: primaryLight,
      color: tertiaryLight,
    ),
    snackBarTheme: SnackBarThemeData(backgroundColor: primaryLight),
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
    iconTheme: IconThemeData(color: primaryLight),
    listTileTheme: ListTileThemeData(
      iconColor: primaryLight,
      textColor: Color(0xFF364955),
      style: ListTileStyle.drawer,
    ),
  );

  ThemeData dark(BuildContext context) => ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.comfortaaTextTheme(
      Theme.of(context).textTheme.apply(bodyColor: tertiaryLight),
    ),
    scaffoldBackgroundColor: backgroundDark,
    appBarTheme: AppBarTheme(backgroundColor: backgroundDark),
    colorScheme: ColorScheme.dark(
      primary: primaryDark,
      secondary: secondaryDark,
      tertiary: tertiariDark,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(primaryDark)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(tertiariDark)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      labelStyle: TextStyle(
        color: primaryDark,
        fontWeight: FontWeight.bold,
        fontSize: 13.sp,
      ),
      errorStyle: TextStyle(color: primaryDark),
      filled: true,
      fillColor: secondaryLight,
    ),
    cardTheme: CardThemeData(
      color: secondaryDark,
      elevation: 6.sp,
      shadowColor: tertiariDark,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: primaryLight,
      contentTextStyle: TextStyle(color: primaryDark),
    ),
    iconTheme: IconThemeData(color: primaryDark),
    listTileTheme: ListTileThemeData(
      iconColor: primaryDark,
      textColor: tertiaryLight,
      style: ListTileStyle.drawer,
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}
