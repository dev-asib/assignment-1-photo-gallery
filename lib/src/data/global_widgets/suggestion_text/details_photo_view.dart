import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class DetailsPhotoView extends StatelessWidget {
  double photoWidth;
  double photoHeight;
  Decoration photoDecoration;
  double detailsPhotoCardElevation;
  double detailsPhotoCardBorderRadius;
  Color detailsPhotoCardShadowColor;
  DetailsPhotoView({
    required this.photoWidth,
    required this.photoHeight,
    required this.photoDecoration,
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
        width: photoWidth,
        height: photoHeight,
        decoration: photoDecoration,
      ),
    );
  }
}
