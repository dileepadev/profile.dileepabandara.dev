import 'package:flutter/material.dart';

class AppThemeData {
  // Colors: Main Colors
  static const Color primaryColor = Color.fromRGBO(1, 159, 171, 1.0);
  static const Color secondaryColor = Color.fromRGBO(25, 25, 25, 1.0);

  // Colors: Text
  static const textPrimary = primaryColor;
  static const textWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const textGreyDark = Color.fromRGBO(147, 147, 147, 1.0);
  static const textGreyLight = Color.fromRGBO(205, 205, 205, 1.0);
  static const textCursor = Color.fromRGBO(61, 61, 61, 1.0);

  // Colors: Buttons and Icons
  static const buttonPrimary = primaryColor;
  static const buttonSecondary = Color.fromRGBO(50, 50, 50, 1.0);
  static const iconPrimary = primaryColor;
  static const iconSecondary = Color.fromRGBO(255, 255, 255, 1.0);

  // Colors: Background and Cards
  static const backgroundBlack = Color.fromRGBO(18, 18, 18, 1.0);
  static const backgroundGrey = Color.fromRGBO(25, 25, 25, 1.0);
  static const cardGrey = Color.fromRGBO(15, 15, 15, 1.0);
  static const tooltip = Color.fromRGBO(33, 33, 33, 1.0);

  // Colors: Opacity
  static const opacityPrimary = Color.fromRGBO(1, 159, 171, 0.5019607843137255);
  static const opacitySecondary = Color.fromRGBO(0, 0, 0, 0.5019607843137255);

  static ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(),
      primaryColor: primaryColor,
      backgroundColor: backgroundBlack,
      scaffoldBackgroundColor: secondaryColor,
      fontFamily: 'Poppins',
      iconTheme: const IconThemeData(color: iconPrimary),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryColor,
        selectionColor: textCursor,
        selectionHandleColor: textPrimary,
      ),
      tooltipTheme: const TooltipThemeData(
        decoration: BoxDecoration(
          color: tooltip,
          border: Border(
            top: BorderSide(color: textGreyDark, width: 1.0),
            left: BorderSide(color: textGreyDark, width: 1.0),
            right: BorderSide(color: textGreyDark, width: 1.0),
            bottom: BorderSide(color: textGreyDark, width: 1.0),
          ),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        textStyle: TextStyle(color: textWhite),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonSecondary),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return buttonPrimary;
              }
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed)) {
                return buttonPrimary;
              }
              return buttonSecondary;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return textWhite;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (Set<MaterialState> states) {
              return const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: textWhite,
              );
            },
          ),
          fixedSize: MaterialStateProperty.resolveWith<Size?>(
            (Set<MaterialState> states) {
              return const Size(600, 40);
            },
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder?>(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0));
            },
          ),
          elevation: MaterialStateProperty.resolveWith<double?>(
            (Set<MaterialState> states) {
              return 0.0;
            },
          ),
        ),
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: primaryColor,
        contentTextStyle: TextStyle(color: textWhite),
        actionTextColor: textWhite,
      ),
      textTheme: const TextTheme(
        displaySmall: TextStyle(
          fontSize: 42.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textWhite,
        ),
        headlineMedium: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: textGreyDark,
        ),
        titleMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: textWhite,
        ),
        titleSmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: textGreyLight,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: textWhite,
        ),
        labelLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: textWhite,
        ),
        labelMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: textGreyDark,
        ),
      ),
    );
  }
}
