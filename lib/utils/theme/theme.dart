import 'package:alinova_ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:alinova_ecommerce/utils/theme/custom_themes/text_theme.dart';


class AAppTheme{
  AAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ATextTheme.lightTextTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: ACheckboxTheme.lightCheckboxTheme,
    chipTheme: AChipTheme.lightChipTheme,
    inputDecorationTheme: ATextFieldTheme.lightInputDecorationTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ATextTheme.darkTextTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: ABottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ACheckboxTheme.darkCheckboxTheme,
    chipTheme: AChipTheme.darkChipTheme,
    inputDecorationTheme: ATextFieldTheme.darkInputDecorationTheme
  );
}