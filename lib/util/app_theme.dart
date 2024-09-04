import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants/color_constant.dart';

class AppTheme {

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      appBarTheme: const AppBarTheme(
        elevation: 1,
        shadowColor: AppColorConstants.white,
        backgroundColor: AppColorConstants.white,
        iconTheme: IconThemeData(
            color: AppColorConstants.black
        )
      ),
      primaryColor: AppColorConstants.primaryColor,
      primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(color: AppColorConstants.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0, // No shadow
          backgroundColor: AppColorConstants.primaryColor, // Background color
          foregroundColor: Colors.white, // Text color
          minimumSize: Size(double.infinity, 30), // Button width and height
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(2.h), // Button border radius
          ),
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w), // Padding
        ),
      ),

    );
  }
}
