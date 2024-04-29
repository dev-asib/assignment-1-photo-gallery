import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/home_controller.dart';
import 'package:photo_gallery/src/controller/suggestions_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/grid_view_image_title.dart';
import 'package:photo_gallery/src/data/global_widgets/photo_view_grid_image.dart';
import 'package:photo_gallery/src/data/utils/custom_box_decoration.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/modules/details/details.dart';

class SuggestionPhotosView extends StatelessWidget {
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
  double boxDecorationBoxShadowSuggestionImageBlurRadius;
  double boxDecorationBoxShadowSuggestionImageSpreedRadius;
  Color boxDecorationBoxShadowSuggestionImageShadowColor;
  double boxDecorationBoxShadowSuggestionImageOffset_X;
  double boxDecorationBoxShadowSuggestionImageOffset_Y;

  SuggestionPhotosView(
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
        required this.boxDecorationBoxShadowSuggestionImageBlurRadius,
        required this.boxDecorationBoxShadowSuggestionImageOffset_X,
        required this.boxDecorationBoxShadowSuggestionImageOffset_Y,
        required this.boxDecorationBoxShadowSuggestionImageShadowColor,
        required this.boxDecorationBoxShadowSuggestionImageSpreedRadius,

      });

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();
    SuggestionsPhotoData suggestionsPhotoData = SuggestionsPhotoData();
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
        suggestionsPhotoData.suggestionsPhotoData[index]['suggestion_photo'];
        String gridImg_Title =
        suggestionsPhotoData.suggestionsPhotoData[index]['suggestion_photo_title'];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsView(
                      detailsViewImgSrc: suggestionsPhotoData.suggestionsPhotoData[index]['suggestion_photo'],
                      detialsImgTitleText: suggestionsPhotoData.suggestionsPhotoData[index]['suggestion_photo_title'],
                      detailsImgDescriptionText: suggestionsPhotoData.suggestionsPhotoData[index]['suggestion_photo_description'],
                      detailsAppBarPhotoTitle: suggestionsPhotoData.suggestionsPhotoData[index]['suggestions_photo_description_title'],
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
                boxDecorationBoxShadowImageBlurRadius: boxDecorationBoxShadowSuggestionImageBlurRadius,
                boxDecorationBoxShadowImageSpreedRadius: boxDecorationBoxShadowSuggestionImageSpreedRadius,
                boxDecorationBoxShadowImageShadowColor: boxDecorationBoxShadowSuggestionImageShadowColor,
                boxDecorationBoxShadowImageOffset_X: boxDecorationBoxShadowSuggestionImageOffset_X,
                boxDecorationBoxShadowImageOffset_Y: boxDecorationBoxShadowSuggestionImageOffset_Y,
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
