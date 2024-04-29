import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';

class SeeMoreButton extends StatelessWidget {
  Color seeMoreButtonBackgroundColor;
  Color seeMoreButtonForegroundColor;
  double buttonMaximumSizeWidth;
  double buttonMaximumSizeHeight;
  double buttonMinimumSizeWidth;
  double buttonMinimumSizeHeight;

  SeeMoreButton({
    super.key,
    required this.seeMoreButtonForegroundColor,
    required this.seeMoreButtonBackgroundColor,
    required this.buttonMaximumSizeHeight,
    required this.buttonMaximumSizeWidth,
    required this.buttonMinimumSizeHeight,
    required this.buttonMinimumSizeWidth,
  });

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: seeMoreButtonBackgroundColor,
          foregroundColor: seeMoreButtonForegroundColor,
          maximumSize: Size(buttonMaximumSizeWidth, buttonMaximumSizeHeight),
          minimumSize: Size(buttonMinimumSizeWidth, buttonMinimumSizeHeight)),
      onPressed: () {},
      child: Text(
        "See More",
        style: CustomTextStyle(
          customFontWeight: FontWeight.normal,
          customFontSize: 16,
          customTextColor: Colors.white,
          customFontFamily: 'Poppins-Regular',
        ),
      ),
    );
  }
}
