import 'package:flutter/material.dart';

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const EdgeInsets bottomSheetPadding =
  EdgeInsets.symmetric(horizontal: 16, vertical: 10);
  static const APP_BAR_SIZE = 56.0;
  static const APP_BAR_EXPANDED_SIZE = 200.0;
}

class AppColors {
  static const red = Colors.blue;
  static const black = Color(0xFF222222);
  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const backgroundLight = Color(0xFFF9F9F9);
  static const transparent = Color(0x00000000);
  static const success = Color(0xFF2AA952);
  static const green = Color(0xFF2AA952);
}

class OpenFlutterEcommerceTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: AppColors.black,
      primaryColorLight: AppColors.lightGray,
      accentColor: AppColors.red,
      bottomAppBarColor: AppColors.lightGray,
      backgroundColor: AppColors.background,
      dialogBackgroundColor: AppColors.backgroundLight,
      errorColor: AppColors.red,
      dividerColor: Colors.transparent,
      appBarTheme: theme.appBarTheme.copyWith(
          color: AppColors.white,
          iconTheme: IconThemeData(color: AppColors.black),
          textTheme: theme.textTheme.copyWith(
              caption: TextStyle(color: AppColors.black, fontSize: 18))),
      textTheme: theme.textTheme.copyWith(
        //over image white text
        display4: theme.textTheme.display4
            .copyWith(fontSize: 48, color: AppColors.white),
        display3: theme.textTheme.display3.copyWith(
            fontSize: 24, color: AppColors.black, fontWeight: FontWeight.w700),

        //product title
        display2   : theme.textTheme.display2   .copyWith(
            color: AppColors.black, fontSize: 16, fontWeight: FontWeight.bold),

        display1   : theme.textTheme.display1   ,
        //product price
        headline   : theme.textTheme.headline
            .copyWith(color: AppColors.lightGray, fontSize: 14),
        title      : theme.textTheme.title      ,

        subhead  : theme.textTheme.display4
            .copyWith(fontSize: 18, color: AppColors.black),
        subtitle   : theme.textTheme.display4   .copyWith(
            fontSize: 24, color: AppColors.white, fontWeight: FontWeight.bold),
        //red button with white text
        button: theme.textTheme.button
            .copyWith(fontSize: 14, color: AppColors.white),
        //black caption title
        caption: theme.textTheme.caption.copyWith(
          fontSize: 34,
          color: AppColors.black,
        ),
        //light gray small text
        body2      : theme.textTheme.body2.copyWith(
          color: AppColors.lightGray,
          fontSize: 11,
        ),
        //view all link
        body1   : theme.textTheme.body1
            .copyWith(color: AppColors.black, fontSize: 11),
      ),
      buttonTheme: theme.buttonTheme.copyWith(
        minWidth: 50,
        buttonColor: AppColors.red,
      ),
    );
  }
}