
import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/theme.dart';


class AppTheme extends Themes {
  Color get primaryColor => Color(0xFFF6BD00);

  Color get white => Color(0xFFFFFFFF);

  Color get darkBlack => Color(0xFF121312);

  Color get grey => Color(0xFF282A28);

  ThemeData get themeData =>  ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBlack,

    appBarTheme: AppBarTheme(
        backgroundColor: grey,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: TextStyle(
          fontFamily:'Roboto',
          fontSize:24 ,
          fontWeight: FontWeight.bold,
          color: white,
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: grey,
      selectedItemColor: primaryColor,
      unselectedItemColor:Colors.white,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle:TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: grey,
      iconColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(width: 1, color: primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(width: 1, color: primaryColor),
      ),
    ),
    textTheme: TextTheme(
        titleLarge:TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: white,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: white,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: white,
        ),
        bodyMedium:TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: white,
        )
    ),
  );
}
