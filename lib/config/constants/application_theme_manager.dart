import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xffDFECDB),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Color(0xffDFECDB),
            width: 4,
          )),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // selectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 30,
      ),
      // unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData(color: Colors.grey, size: 28),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white,
      padding: EdgeInsets.zero,
    )
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xff060E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // selectedItemColor: primaryColor,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
        size: 30,
      ),
      // unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData(color: Colors.grey, size: 28),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: Color(0xFF141922),
            width: 4,
          )),
    ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: Color(0xFF141922),
        padding: EdgeInsets.zero,
      )
  );
}
