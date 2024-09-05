import 'package:flutstore/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutstore/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class FAppTheme {
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: FTextTheme.lightTextTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButton,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: FCheckboxTheme.lightCheckboxTheme,
    chipTheme: FChipTheme.lightChipTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: FTextTheme.darkTextTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButton,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: FCheckboxTheme.darkCheckboxTheme,
    chipTheme: FChipTheme.darkChipTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFieldTheme.darkInputDecorationTheme,
  );
}
