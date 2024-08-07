import 'dart:ui';

class ColorManager {
  // static Color darkGrey='#525252';
  // static Color grey='#737477';
  // static Color lightGrey="#9E9E9E";
  // static Color primaryOpacity="#B3ED9728";
  //it was showing error that type string value cant be assigned to Color object
  //A value of type 'String' can't be assigned to a variable of type 'Color'.

  static Color primaryColor = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color grey = HexColor.fromHex('#737477');
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity = HexColor.fromHex("#B3ED9728");

  static Color primarydark = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
}

//we used a function to convert string type into hex
//remove # and ' ' from string
//then add FF and convert it into int by using int.parse()
extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.replaceAll("#", '');
    if (hexString.length == 6) {
      hexString = "FF" + hexString;
    }
    return Color(int.parse(hexString, radix: 16));
  }
}
