import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/suggestions_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar.dart';
import 'package:photo_gallery/src/data/global_widgets/photo_details_image_view.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/details_photo_title_and_description.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/details_photo_view.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/see_more_button.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/suggestion_text.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/suggestions_grid_photo_view.dart';
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
          appBarLeadingHeight: 45,
          appBarLeadingWidth: 45,
          appBarToolBarHeight: 100,
          appBarTitleFontSize: 25,
          appBarTitleText: detailsAppBarPhotoTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsPhotoView(
                photoWidth: detailsPhotoWidth,
                photoHeight: detailsPhotoHeight,
                photoDecoration: customBoxDecoration(
                  boxDecorationColor: Colors.green,
                  boxDecorationRadius: 40,
                  boxDecorationImageSrc: detailsViewImgSrc,
                  boxDecorationImageBoxFit: BoxFit.fill,
                ),
                detailsPhotoCardBorderRadius: 40,
                detailsPhotoCardElevation: 16,
                detailsPhotoCardShadowColor: Colors.grey,
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
                        detailsPhototitleFontSize: 30,
                        detailsPhototitleFontWeight: FontWeight.normal,
                        detailsPhotoDescriptionColor: Colors.black,
                        detailsPhotoDescriptionFontSize: 16,
                        detailsPhotoDescriptionFontWeight: FontWeight.normal,
                      ),
                      SeeMoreButton(
                        seeMoreButtonBackgroundColor:
                        customColors.seeMoreButtonBackgroundColor,
                        seeMoreButtonForegroundColor:
                        customColors.seeMoreButtonForegroundColor,
                        buttonMaximumSizeHeight: 40,
                        buttonMaximumSizeWidth: screenWidth,
                        buttonMinimumSizeHeight: 40,
                        buttonMinimumSizeWidth: screenWidth,
                      ),
                      SuggestionText(),
                      SuggestionPhotosView(
                        item_Count: suggestionsPhotoData.suggestionsPhotoData.length,
                        crossAxis_Spacing: 20,
                        mainAxis_Spacing: 20,
                        boxDecorationBorderRadius: 20,
                        boxDecorationImageBoxFit: BoxFit.fill,
                        photo_Height: 0,
                        photo_Width: 0,
                        gridViewTitleFontSize: 20,
                        gridViewTitleFontWeight: FontWeight.bold,
                        customAlignmentInContainerWidget: Alignment.bottomLeft,
                        paddingInContainerWidget: EdgeInsets.only(left: 20, bottom: 20),
                        detailsPhotoCardBorderRadius: 20,
                        detailsPhotoCardElevation: 16,
                        crossAxis_Count: 2,
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
