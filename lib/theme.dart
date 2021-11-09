import 'package:chat_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: cPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: cContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: cContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: cPrimaryColor,
      secondary: cSecondaryColor,
      error: cErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: cContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: cContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: cPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: cPrimaryColor,
    scaffoldBackgroundColor: cContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: cContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: cContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: cPrimaryColor,
      secondary: cSecondaryColor,
      error: cErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: cContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: cContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: cPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
