import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle CustomTextStyle({
  required FontWeight customFontWeight,
  required double customFontSize,
  required Color customTextColor,
  required String customFontFamily,
}){

  return TextStyle(
    fontWeight: customFontWeight,
    fontSize: customFontSize,
    color:  customTextColor,
    fontFamily: customFontFamily,
  );

}