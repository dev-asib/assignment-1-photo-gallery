import 'package:flutter/material.dart';
import 'package:photo_gallery/src/data/utils/custom_text_style.dart';

class DetailsPhotoTitleAndDescription extends StatelessWidget {
  String detailsPhotoTitleText;
  String detailsPhotoDescription;
  FontWeight detailsPhototitleFontWeight;
  FontWeight detailsPhotoDescriptionFontWeight;
  double detailsPhototitleFontSize;
  double detailsPhotoDescriptionFontSize;
  Color detailsPhotoTitleColor;
  Color detailsPhotoDescriptionColor;
  DetailsPhotoTitleAndDescription(
      {super.key,
      required this.detailsPhotoTitleText,
      required this.detailsPhotoDescription,
      required this.detailsPhotoTitleColor,
        required this.detailsPhototitleFontSize,
        required this.detailsPhototitleFontWeight,
        required this.detailsPhotoDescriptionColor,
        required this.detailsPhotoDescriptionFontSize,
        required this.detailsPhotoDescriptionFontWeight
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        detailsPhotoTitleText,
        style: CustomTextStyle(
          customFontWeight: detailsPhototitleFontWeight,
          customFontSize: detailsPhototitleFontSize,
          customTextColor: detailsPhotoTitleColor,
        ),
      ),
      subtitle: Text(
        detailsPhotoDescription,
      style:CustomTextStyle(
        customFontWeight: detailsPhotoDescriptionFontWeight,
        customFontSize: detailsPhotoDescriptionFontSize,
        customTextColor: detailsPhotoDescriptionColor,
      ),
      ),
    );
  }
}
