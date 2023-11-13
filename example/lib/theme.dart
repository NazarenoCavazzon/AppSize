import 'package:appsize/appsize.dart';
import 'package:flutter/material.dart';

extension CustomTheme on ThemeData {
  ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.purple,
      colorScheme: colorScheme.copyWith(
        primary: Colors.purple,
      ),
      inputDecorationTheme: _inputDecorationTheme,
      floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      navigationBarTheme: navigationBarTheme.copyWith(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: elevatedButtonTheme
        ..style?.copyWith(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => Colors.white,
          ),
        ),
      scaffoldBackgroundColor: Colors.white,
      primaryTextTheme: primaryTextTheme.merge(CustomTextStyles.primary),
      textTheme: textTheme.merge(CustomTextStyles.standard),
    );
  }

  /// Standard `InputDecorationTheme` for the example app UI.
  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15.sp),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.sp),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.sp),
      ),
    );
  }
}

/// {@template custom_colors}
/// Contains a palette of the colors used in the app.
/// {@endtemplate}
abstract class CustomTextStyles {
  /// {@macro custom_colors}
  static const primary = TextTheme(
    labelSmall: heroPrimary,
    displayLarge: headline1Primary,
    displayMedium: headline2Primary,
    displaySmall: headline3Primary,
    headlineMedium: headline4Primary,
    bodyLarge: bodyPrimary,
    bodyMedium: bodyPrimary,
    bodySmall: hintPrimary,
  );

  /// {@macro custom_colors}
  static const standard = TextTheme(
    labelSmall: hero,
    displayLarge: headline1,
    displayMedium: headline2,
    displaySmall: headline3,
    headlineMedium: headline4,
    bodyLarge: body,
    bodyMedium: body,
    bodySmall: hint,
  );

  /// The hero text style to be used with light backgrounds.
  static const TextStyle hero = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 118,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  /// The hero text style to be used with dark backgrounds.
  static const TextStyle heroPrimary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 118,
    fontWeight: FontWeight.bold,
  );

  /// The headline 1 text style to be used with light backgrounds.
  static const TextStyle headline1 = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  /// The headline 1 text style to be used with dark backgrounds.
  static const TextStyle headline1Primary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );

  /// The headline 1 light text style to be used with light backgrounds.
  static const TextStyle headline1Light = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 50,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  /// The headline 1 light text style to be used with dark backgrounds.
  static const TextStyle headline1LightPrimary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 50,
    fontWeight: FontWeight.w400,
  );

  /// The headline 2 text style to be used with light backgrounds.
  static const TextStyle headline2 = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  /// The headline 2 text style to be used with dark backgrounds.
  static const TextStyle headline2Primary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 34,
    fontWeight: FontWeight.w700,
  );

  /// The `headline 3 text style to be used with light backgrounds.
  static const TextStyle headline3 = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  /// The headline 3 text style to be used with dark backgrounds.
  static const TextStyle headline3Primary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );

  /// The headline 4 text style to be used with light backgrounds.
  static const TextStyle headline4 = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  /// The headline 4 text style to be used with dark backgrounds.
  static const TextStyle headline4Primary = TextStyle(
    fontFamily: 'RobotoCondensed',
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  /// The body text style to be used with light backgrounds.
  static const TextStyle body = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  /// The body text style to be used with dark backgrounds.
  static const TextStyle bodyPrimary = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// The hint text style to be used with light backgrounds.
  static const TextStyle hint = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  /// The hint text style to be used with dark backgrounds.
  static const TextStyle hintPrimary = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
