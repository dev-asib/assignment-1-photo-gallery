import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/home_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/grid_view_image_title.dart';
import 'package:photo_gallery/src/data/global_widgets/photo_view_grid_image.dart';
import 'package:photo_gallery/src/data/utils/custom_box_decoration.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/modules/details/details.dart';

class GalleryPhotosView extends StatelessWidget {
  int crossAxis_Count;
  double crossAxis_Spacing;
  double mainAxis_Spacing;
  int item_Count;
  double boxDecorationBorderRadius;
  BoxFit boxDecorationImageBoxFit;
  double photo_Height;
  double photo_Width;
  FontWeight gridViewTitleFontWeight;
  double gridViewTitleFontSize;
  Alignment customAlignmentInContainerWidget;
  EdgeInsets paddingInContainerWidget;
  double boxDecorationBoxShadowGridViewImageBlurRadius;
  double boxDecorationBoxShadowGridViewImageSpreedRadius;
  Color boxDecorationBoxShadowGridViewImageShadowColor;
  double boxDecorationBoxShadowGridViewImageOffset_X;
  double boxDecorationBoxShadowGridViewImageOffset_Y;

  GalleryPhotosView(
      {super.key,
      required this.crossAxis_Count,
      required this.item_Count,
      required this.crossAxis_Spacing,
      required this.mainAxis_Spacing,
      required this.boxDecorationBorderRadius,
      required this.boxDecorationImageBoxFit,
      required this.photo_Height,
      required this.photo_Width,
      required this.gridViewTitleFontSize,
      required this.gridViewTitleFontWeight,
      required this.customAlignmentInContainerWidget,
      required this.paddingInContainerWidget,
        required this.boxDecorationBoxShadowGridViewImageBlurRadius,
        required this.boxDecorationBoxShadowGridViewImageOffset_X,
        required this.boxDecorationBoxShadowGridViewImageOffset_Y,
        required this.boxDecorationBoxShadowGridViewImageShadowColor,
        required this.boxDecorationBoxShadowGridViewImageSpreedRadius,

      });

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();
    HomeActivityData homeActivityData = HomeActivityData();

    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: item_Count,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxis_Count,
          crossAxisSpacing: crossAxis_Spacing,
          mainAxisSpacing: mainAxis_Spacing),
      itemBuilder: (context, index) {
        String gridImg_Src =
            homeActivityData.galleryPhotoData[index]['gallery_photo'];
        String gridImg_Title =
            homeActivityData.galleryPhotoData[index]['gallery_photo_title'];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsView(
                          detailsViewImgSrc: homeActivityData.galleryPhotoData[index]['gallery_photo'],
                          detialsImgTitleText: homeActivityData.galleryPhotoData[index]['photo_description_title'],
                          detailsImgDescriptionText: homeActivityData.galleryPhotoData[index]['photo_description'],
                      detailsAppBarPhotoTitle: homeActivityData.galleryPhotoData[index]['gallery_photo_title'],
                        )));
          },
          child: PhotoViewGridImage(
            paddingInContainerWidget: paddingInContainerWidget,
            customAlignmentInContainerWidget: customAlignmentInContainerWidget,
            photoWidth: photo_Width,
            photoHeight: photo_Height,
            photoDecoration: customBoxDecoration(
              boxDecorationColor: customColors.gridViewImageBackgroundColor,
              boxDecorationRadius: boxDecorationBorderRadius,
              boxDecorationImageSrc: gridImg_Src,
              boxDecorationImageBoxFit: boxDecorationImageBoxFit,

              boxDecorationBoxShadowImageBlurRadius: boxDecorationBoxShadowGridViewImageBlurRadius,
              boxDecorationBoxShadowImageSpreedRadius: boxDecorationBoxShadowGridViewImageSpreedRadius,
              boxDecorationBoxShadowImageShadowColor: boxDecorationBoxShadowGridViewImageShadowColor,
              boxDecorationBoxShadowImageOffset_X: boxDecorationBoxShadowGridViewImageOffset_X,
              boxDecorationBoxShadowImageOffset_Y: boxDecorationBoxShadowGridViewImageOffset_Y,


            ),
            customWidget: gridViewImageTitle(
              gridViewImageTitile: gridImg_Title,
              customFontWeight: gridViewTitleFontWeight,
              customFontSize: gridViewTitleFontSize,
            ),

          ),
        );
      },
    );
  }
}
