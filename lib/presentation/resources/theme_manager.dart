import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/font_manager.dart';
import 'package:clean_architecture/presentation/resources/style_manager.dart';
import 'package:clean_architecture/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData applicationThemeData() {
  return ThemeData(
    //main colors of the theme
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primaryOpacity,
    primaryColorDark: ColorManager.primarydark,
    disabledColor: ColorManager.grey1,

    //card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4),
//ripple color
    splashColor: ColorManager.primaryColor,

    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryColor,
      titleTextStyle:
          regularFontStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),

    //button theme
    buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        buttonColor: ColorManager.grey1,
        disabledColor: ColorManager.grey1,
        splashColor: ColorManager.white),
//elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: regularFontStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s4)),
        primary: ColorManager.primaryColor,
      ),
    ),

    //text theme
    textTheme: TextTheme(
      displayLarge:
          BoldFontStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleMedium:
          SemiBoldFont(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      bodySmall: regularFontStyle(color: ColorManager.grey1),
      bodyLarge: regularFontStyle(color: ColorManager.grey),
    ),

    //input decoration theme(text form theme)

    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(AppPadding.p8),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s1_5)),
        ),
        //focused border
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primaryColor, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s1_5)),
        ),
        //error border
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s1_5)),
        ),
        //focused error border
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primaryColor, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s1_5)),
        ),
        labelStyle:
            SemiBoldFont(color: ColorManager.darkGrey, fontSize: FontSize.s14),
        errorStyle: regularFontStyle(color: ColorManager.error),
        hintStyle: regularFontStyle(
          color: ColorManager.grey,
        )),
  );
}
