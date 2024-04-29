import 'package:flutter/material.dart';
import 'package:photo_gallery/src/controller/app_bar_controller.dart';
import 'package:photo_gallery/src/controller/home_controller.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar.dart';
import 'package:photo_gallery/src/data/global_widgets/photo_grid_view.dart';

class HomeViewForDeviceLandscapeMode extends StatelessWidget {
  const HomeViewForDeviceLandscapeMode({super.key});

  @override
  Widget build(BuildContext context) {
    HomeActivityData homeActivityData = HomeActivityData();
    AppBarDataController appBarDataController = AppBarDataController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          appBarLeadingBorderRadius: 10,
          appBarLeadingContainerColors: Colors.white.withOpacity(0.5),
          appBarLeadingHeight: 40,
          appBarLeadingWidth: 40,
          appBarToolBarHeight: 100,
          appBarTitleFontSize: 20,
          appBarTitleText: appBarDataController.appBarTexttitle,
          customFontWeight: FontWeight.w600,


        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            left: 20.0,
            right: 20.0,
            bottom: 15.0,
          ),
          child: Column(
            children: [
              GalleryPhotosView(
                crossAxis_Count: 4,
                item_Count: homeActivityData.galleryPhotoData.length,
                crossAxis_Spacing: 20,
                mainAxis_Spacing: 20,
                boxDecorationBorderRadius: 30,
                boxDecorationImageBoxFit: BoxFit.fill,
                photo_Height: 180,
                photo_Width: 180,
                gridViewTitleFontSize: 20,
                gridViewTitleFontWeight: FontWeight.bold,
                customAlignmentInContainerWidget: Alignment.bottomLeft,
                paddingInContainerWidget: EdgeInsets.only(left: 20, bottom: 20),
                boxDecorationBoxShadowGridViewImageBlurRadius: 35,
                boxDecorationBoxShadowGridViewImageSpreedRadius: 0,
                boxDecorationBoxShadowGridViewImageShadowColor: Colors.black.withOpacity(0.5),
                boxDecorationBoxShadowGridViewImageOffset_X: 0,
                boxDecorationBoxShadowGridViewImageOffset_Y: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
