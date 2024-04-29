import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container appBarLeading({
  required double appBarLeadingHeight,
  required double appBarLeadingWidth,
  required double appBarLeadingBorderRadius,
  required Color appBarLeadingContainerColors,
  required Widget appBarLeadingWidget,
}){
  return Container(
    padding: EdgeInsets.only(left: 11),
      height: appBarLeadingHeight,
      width: appBarLeadingWidth,
      decoration: BoxDecoration(
      color: appBarLeadingContainerColors,
  borderRadius: BorderRadius.circular(appBarLeadingBorderRadius)
  ),
    child: appBarLeadingWidget,
  );
}