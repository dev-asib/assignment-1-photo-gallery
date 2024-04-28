import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class PhotoViewGridImage extends StatelessWidget {
  double photoWidth;
  double photoHeight;
  Decoration photoDecoration;
  Widget customWidget;
  Alignment customAlignmentInContainerWidget;
  EdgeInsets paddingInContainerWidget;
  double detailsPhotoCardElevation;
  double detailsPhotoCardBorderRadius;
  Color detailsPhotoCardShadowColor;
  PhotoViewGridImage({
    required this.photoWidth,
    required this.photoHeight,
    required this.photoDecoration,
    required this.customWidget,
    required this.customAlignmentInContainerWidget,
    required this.paddingInContainerWidget,
    required this.detailsPhotoCardElevation,
    required this.detailsPhotoCardBorderRadius,
    required this.detailsPhotoCardShadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: detailsPhotoCardElevation,
      shadowColor: detailsPhotoCardShadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(detailsPhotoCardBorderRadius)),
      child: Container(
        padding: paddingInContainerWidget,
        alignment: customAlignmentInContainerWidget,
        width: photoWidth,
        height: photoHeight,
        decoration: photoDecoration,
        child: customWidget,
      ),
    );
  }
}
