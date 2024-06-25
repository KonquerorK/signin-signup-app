import 'package:flutter/material.dart';
import 'package:login_signin_form/other/app_colors.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light, 
  primary: AppColors.primaryColor, 
  onPrimary: Colors.white, 
  secondary: AppColors.secondaryColor, 
  onSecondary: Colors.white, 
  error: AppColors.errorColor, 
  onError: Colors.white, 
  background: AppColors.backgroundColor,
  onBackground: AppColors.textColor,
  surface: Colors.white, 
  onSurface: AppColors.textColor
);


const darkColorScheme = ColorScheme(
  brightness: Brightness.dark, 
  primary: AppColors.primaryColor, 
  onPrimary: AppColors.textColor, 
  secondary: AppColors.secondaryColor, 
  onSecondary: Colors.white, 
  error: AppColors.errorColor, 
  onError: Colors.black, 
  background: Colors.black,
  onBackground: AppColors.backgroundColor,
  surface: AppColors.secondaryColor, 
  onSurface: Colors.white
);



ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
      elevation: WidgetStateProperty.all<double>(5.0),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ), 
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.primaryColor),
      foregroundColor: WidgetStateProperty.all<Color>(AppColors.textColor),
      elevation: WidgetStateProperty.all<double>(5.0),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ), 
    ),
  ),
);
