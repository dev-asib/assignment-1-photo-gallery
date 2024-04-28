import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/suggestions_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/details_photo_title_and_description.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/details_photo_view.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/see_more_button.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/suggestion_text.dart';
import 'package:photo_gallery/src/data/global_widgets/suggestion_text/suggestions_grid_photo_view.dart';
import 'package:photo_gallery/src/data/utils/custom_box_decoration.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';

class PhotoDetailsViewForDevicePotraitMode extends StatelessWidget {
  String detailsViewImgSrc;
  String detialsImgTitleText;
  String detailsImgDescriptionText;
  String detailsAppBarPhotoTitle;
  PhotoDetailsViewForDevicePotraitMode(
      {super.key,
      required this.detailsViewImgSrc,
      required this.detialsImgTitleText,
      required this.detailsImgDescriptionText,
      required this.detailsAppBarPhotoTitle});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    double detailsPhotoWidth = screenWidth;
    double detailsPhotoHeight = detailsPhotoWidth - 40;

    CustomColors customColors = CustomColors();
    SuggestionsPhotoData suggestionsPhotoData = SuggestionsPhotoData();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
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
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              DetailsPhotoTitleAndDescription(
                detailsPhotoTitleText: detialsImgTitleText,
                detailsPhotoDescription: detailsImgDescriptionText,
                detailsPhotoTitleColor: Colors.black,
                detailsPhototitleFontSize: 30,
                detailsPhototitleFontWeight: FontWeight.normal,
                detailsPhotoDescriptionColor: Colors.black,
                detailsPhotoDescriptionFontSize: 15,
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
          ),
        ),
      ),
    );
  }
}
