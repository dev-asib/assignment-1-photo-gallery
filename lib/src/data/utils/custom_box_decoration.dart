import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration(
    {
required Color boxDecorationColor,
    required double boxDecorationRadius,
      required boxDecorationImageSrc,
      required BoxFit boxDecorationImageBoxFit,
      required double boxDecorationBoxShadowImageBlurRadius,
      required double boxDecorationBoxShadowImageSpreedRadius,
      required double boxDecorationBoxShadowImageOffset_X,
      required double boxDecorationBoxShadowImageOffset_Y,
      required Color boxDecorationBoxShadowImageShadowColor,
    }
    ){
      return BoxDecoration(
        color: boxDecorationColor,
        borderRadius: BorderRadius.circular(boxDecorationRadius),
        image: DecorationImage(image: AssetImage(boxDecorationImageSrc),
        fit: boxDecorationImageBoxFit
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: boxDecorationBoxShadowImageBlurRadius,
            spreadRadius: boxDecorationBoxShadowImageSpreedRadius,
            offset: Offset(boxDecorationBoxShadowImageOffset_X, boxDecorationBoxShadowImageOffset_Y),
            color: boxDecorationBoxShadowImageShadowColor,
          ),
        ]
      );
}