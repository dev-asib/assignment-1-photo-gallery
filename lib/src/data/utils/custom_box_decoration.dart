import 'package:flutter/material.dart';

BoxDecoration customBoxDecoration(
    {
required Color boxDecorationColor,
    required double boxDecorationRadius,
      required boxDecorationImageSrc,
      required BoxFit boxDecorationImageBoxFit,
    }
    ){
      return BoxDecoration(
        color: boxDecorationColor,
        borderRadius: BorderRadius.circular(boxDecorationRadius),
        image: DecorationImage(image: AssetImage(boxDecorationImageSrc),
        fit: boxDecorationImageBoxFit
        ),
      );
}