import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class DetailsPhotoView extends StatelessWidget {
  double photoWidth;
  double photoHeight;
  Decoration photoDecoration;

  DetailsPhotoView({
    required this.photoWidth,
    required this.photoHeight,
    required this.photoDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: photoWidth,
      height: photoHeight,
      decoration: photoDecoration,
    );
  }
}
