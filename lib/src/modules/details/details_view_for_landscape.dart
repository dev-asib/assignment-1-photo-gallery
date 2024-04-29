import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/suggestions_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestions/details_photo_title_and_description.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestions/details_photo_view.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestions/see_more_button.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestions/suggestion_text.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestions/suggestions_grid_photo_view.dart';
import 'package:photo_gallery/src/data/utils/custom_box_decoration.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';

class PhotoDetailsViewForDeviceLandscapeMode extends StatelessWidget {
  String detailsViewImgSrc;
  String detailsImgDescriptionText;
  String detialsImgTitleText;
  String detailsAppBarPhotoTitle;

  PhotoDetailsViewForDeviceLandscapeMode({super.key,
    required this.detailsViewImgSrc,
    required this.detailsImgDescriptionText,
    required this.detialsImgTitleText,
    required this.detailsAppBarPhotoTitle
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    double detailsPhotoWidth = screenWidth/2-40;
    double detailsPhotoHeight = detailsPhotoWidth;

    CustomColors customColors = CustomColors();
    SuggestionsPhotoData suggestionsPhotoData = SuggestionsPhotoData();
    return Scaffold(
      appBar:   PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          appBarLeadingBorderRadius: 10,
          appBarLeadingContainerColors: Colors.white.withOpacity(0.5),
          appBarLeadingHeight: 40,
          appBarLeadingWidth: 40,
          appBarToolBarHeight: 100,
          appBarTitleFontSize: 20,
          appBarTitleText: detailsAppBarPhotoTitle,
          customFontWeight: FontWeight.w600,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsPhotoView(
                photoWidth: detailsPhotoWidth,
                photoHeight: detailsPhotoHeight,
                photoDecoration: customBoxDecoration(
                  boxDecorationColor: Colors.green,
                  boxDecorationRadius: 30,
                  boxDecorationImageSrc: detailsViewImgSrc,
                  boxDecorationImageBoxFit: BoxFit.fill,
                  boxDecorationBoxShadowImageBlurRadius: 35,
                  boxDecorationBoxShadowImageShadowColor: Colors.black.withOpacity(0.5),
                  boxDecorationBoxShadowImageSpreedRadius: 0,
                  boxDecorationBoxShadowImageOffset_X: 5,
                  boxDecorationBoxShadowImageOffset_Y: 12,

                ),
              ),
              SizedBox(
                height: screenHeight,
                width: screenWidth/2,
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsPhotoTitleAndDescription(
                          detailsPhotoTitleText: detialsImgTitleText,
                          detailsPhotoDescription: detailsImgDescriptionText,
                          detailsPhotoTitleColor: Colors.black,
                          detailsPhototitleFontSize: 24,
                          detailsPhototitleFontWeight: FontWeight.normal,
                          detailsPhotoDescriptionColor: Colors.black,
                          detailsPhotoDescriptionFontSize: 15,
                          detailsPhotoDescriptionFontWeight: FontWeight.normal,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        SeeMoreButton(
                          seeMoreButtonBackgroundColor:
                          customColors.seeMoreButtonBackgroundColor,
                          seeMoreButtonForegroundColor:
                          customColors.seeMoreButtonForegroundColor,
                          buttonMaximumSizeHeight: 51,
                          buttonMaximumSizeWidth: screenWidth,
                          buttonMinimumSizeHeight: 51,
                          buttonMinimumSizeWidth: screenWidth,
                          seeMoreButtonTextSize: 20,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        SuggestionText(
                          suggestionsTextFontSize: 20,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        SuggestionPhotosView(
                          item_Count: suggestionsPhotoData.suggestionsPhotoData.length,
                          crossAxis_Spacing: 20,
                          mainAxis_Spacing: 20,
                          boxDecorationBorderRadius: 20,
                          boxDecorationImageBoxFit: BoxFit.fill,
                          photo_Height: 180,
                          photo_Width: 180,
                          gridViewTitleFontSize: 20,
                          gridViewTitleFontWeight: FontWeight.bold,
                          customAlignmentInContainerWidget: Alignment.bottomLeft,
                          paddingInContainerWidget: EdgeInsets.only(left: 20, bottom: 20),
                          crossAxis_Count: 2,
                          boxDecorationBoxShadowSuggestionImageBlurRadius: 35,
                          boxDecorationBoxShadowSuggestionImageSpreedRadius: 0,
                          boxDecorationBoxShadowSuggestionImageShadowColor: Colors.black.withOpacity(0.5),
                          boxDecorationBoxShadowSuggestionImageOffset_X: 0,
                          boxDecorationBoxShadowSuggestionImageOffset_Y: 15,
                        ),

                      ],
                    )],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

