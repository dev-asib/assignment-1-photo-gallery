import 'package:flutter/material.dart';

TextStyle CustomTextStyle({
  required FontWeight customFontWeight,
  required double customFontSize,
  required Color customTextColor,
}){

  return TextStyle(
    fontWeight: customFontWeight,
    fontSize: customFontSize,
    color:  customTextColor,
  );

}