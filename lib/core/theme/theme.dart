import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
    ),
  );
}
