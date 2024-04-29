import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';
import 'package:google_fonts/google_fonts.dart';

Text gridViewImageTitle({
  required String gridViewImageTitile,
  required FontWeight customFontWeight,
  required double customFontSize,
}) {
  CustomColors customColors = CustomColors();
  return Text(
    gridViewImageTitile,
    style:CustomTextStyle(
      customFontWeight: customFontWeight,
      customFontSize: customFontSize,
      customTextColor: customColors.textColorInGridViewImage,
      customFontFamily: 'Roboto-Regular'
    ),
  );
}
