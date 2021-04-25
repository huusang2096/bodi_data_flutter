import 'package:flutter/material.dart';

/// Text style farmapp
Color splashColor = Colors.grey.withOpacity(0.1);
// App Colors
Color indigoColor = Color(0xFF6259F0);
Color blueColor = Color(0xFF5587D5);
Color lineBLue = Color(0xFFBCD2F0);
Color lineRed = Color(0xFFE1BAC2);
Color lineindigo = Color(0xFFC4C1F9);
Color switchColor = Color(0xFF64AC9F);
Color textblueColor = Color(0xFF5587D5);
Color lineblue = Color(0xFFBCD2F0);
Color lineIndigo = Color(0xFFC4C1F9);
Color textgrey = Color(0xFF7C8794);
Color textRed = Color(0xFFB7475B);
Color headerColor = Color(0xFF515C6A);
Color boder = Color(0xFFC5CED8);
Color backgroundComment = Color(0xFFF7F9FA);
Color backgroundSelect = Color(0xFFA5D6CF);
Color boderSelect = Color(0xFF64AC9F);
Color backgroundAdd = Color(0xFFA3C2EA);
Color boderAdd = Color(0xFF5587D5);
Color cellAudit = Color(0xffdfe6ed);
Color cellAuditLight = Color(0xfff7f9fa);
Color borderGrey2 = Color(0xffc5ced6);
Color borderGrey1 = Color(0xff9eadba);
Color nameComment = Color(0xff207868);
Color textButtonRed = Color(0xFFD85B6E);
Color colorWhite = Colors.white;
Color baseColor = Colors.grey[300]!;
Color highlightColor = Colors.grey[100]!;
Color styleOptionColor = Color(0xFF797F87);
Color green = Colors.green;

/// END
///
///
TextStyle title = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 14,
);

TextStyle titleHeader = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle header = TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

TextStyle titleBold = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

TextStyle titleInput = TextStyle(
  color: headerColor,
  fontWeight: FontWeight.w900,
  fontSize: 12,
);

TextStyle titleBlue = TextStyle(
  color: blueColor,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle titleDialog = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

TextStyle body1 = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);

TextStyle textItem = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);

TextStyle textButton = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 12,
);

TextStyle textGreyBold = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 12,
);
TextStyle textCaption = TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.bold,
  fontSize: 9,
);

TextStyle hintTextGrey = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 8,
);

const Color transparentColor = const Color.fromRGBO(0, 0, 0, 0.2);
const Color activeButtonColor = const Color.fromRGBO(43, 194, 137, 50.0);
const Color dangerButtonColor = const Color(0XFFf53a4d);

int getColorHexFromStr(String colorStr) {
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int val = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("An error occurred when converting a color");
    }
  }
  return val;
}
