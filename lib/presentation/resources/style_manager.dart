import 'dart:ui';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/font_manager.dart';

TextStyle _getTextStyle({
  FontWeight? fontWeight,
  Color? color,
  String? fontFamily,
  double? fontSize,
}) {
  return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
      fontSize: fontSize);
}

//regular style
 regularFontStyle({required Color color, fontSize = FontSize.s12}) {
  return _getTextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeightManager.regular,
      fontFamily: FontManager.fontFamily);
}

//light font style
 lightFontStyle({
  required Color? color,
  double fontSize = FontSize.s12,
}) {
  return _getTextStyle(fontFamily: FontManager.fontFamily, color: color);
}

 BoldFontStyle({
  required Color color, required fontSize
    }){
  return _getTextStyle(fontFamily: FontManager.fontFamily,color: color,fontWeight: FontWeightManager.Bold,fontSize:fontSize );
}

 SemiBoldFont({required Color color,required fontSize}){
  return _getTextStyle(fontWeight: FontWeightManager.semi_Bold,fontFamily: FontManager.fontFamily,color: color);

}
