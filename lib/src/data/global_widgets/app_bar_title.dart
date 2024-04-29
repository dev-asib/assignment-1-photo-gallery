import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';
import 'package:google_fonts/google_fonts.dart';
Text appBarTitle({
  required String appBarTitleText,
  required double appBarTitleFontSize,
  required FontWeight customFontWeight
}) {
  CustomColors customColors = CustomColors();
  return Text(
    appBarTitleText,
    style: CustomTextStyle(
      customFontWeight: customFontWeight,
      customFontSize: appBarTitleFontSize,
      customTextColor: customColors.appBarTextColor,
      customFontFamily: 'Poppins-Regular'
    ),
  );
}
