import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
Text appBarTitle({
  required String appBarTitleText,
  required double appBarTitleFontSize,
}) {
  CustomColors customColors = CustomColors();
  return Text(
    appBarTitleText,
    style: CustomTextStyle(
      customFontWeight: FontWeight.bold,
      customFontSize: appBarTitleFontSize,
      customTextColor: customColors.appBarTextColor,
      customFontFamily: 'Poppins-Regular'
    ),
  );
}
