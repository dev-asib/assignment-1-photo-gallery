import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionText extends StatelessWidget {
  const SuggestionText({super.key});

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();
    return Text(
      "Suggestions",
      style:CustomTextStyle(
        customFontWeight: FontWeight.normal,
        customFontSize: 25,
        customTextColor: customColors.suggestionsTextColor,
        customFontFamily: 'Poppins-Regular'
      ),
    );
  }
}
