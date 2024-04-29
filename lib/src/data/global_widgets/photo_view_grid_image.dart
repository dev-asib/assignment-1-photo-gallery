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

  PhotoViewGridImage({
    required this.photoWidth,
    required this.photoHeight,
    required this.photoDecoration,
    required this.customWidget,
    required this.customAlignmentInContainerWidget,
    required this.paddingInContainerWidget,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingInContainerWidget,
      alignment: customAlignmentInContainerWidget,
      width: photoWidth,
      height: photoHeight,
      decoration: photoDecoration,
      child: customWidget,
    );
  }
}
