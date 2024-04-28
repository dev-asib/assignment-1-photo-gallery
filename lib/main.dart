import 'package:flutter/material.dart';
import 'package:photo_gallery/src/modules/home/home.dart';

void main(){
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  const PhotoGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
