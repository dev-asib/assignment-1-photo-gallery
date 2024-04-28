import 'package:flutter/material.dart';
import 'package:photo_gallery/src/modules/details/details_view_for_landscape.dart';
import 'package:photo_gallery/src/modules/details/details_view_for_potrait.dart';

class DetailsView extends StatelessWidget {
  String detailsViewImgSrc;
  String detialsImgTitleText;
  String detailsImgDescriptionText;
  String detailsAppBarPhotoTitle;
   DetailsView({super.key,
   required this.detailsViewImgSrc,
     required this.detialsImgTitleText,
     required this.detailsImgDescriptionText,
     required this.detailsAppBarPhotoTitle,
   });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: OrientationBuilder(builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return PhotoDetailsViewForDevicePotraitMode(
              detailsViewImgSrc: detailsViewImgSrc,
              detailsImgDescriptionText: detailsImgDescriptionText,
              detialsImgTitleText: detialsImgTitleText,
              detailsAppBarPhotoTitle: detailsAppBarPhotoTitle,
            );
          } else{
            return PhotoDetailsViewForDeviceLandscapeMode(
              detailsViewImgSrc: detailsViewImgSrc,
              detailsImgDescriptionText: detailsImgDescriptionText,
              detialsImgTitleText: detialsImgTitleText,
              detailsAppBarPhotoTitle: detailsAppBarPhotoTitle,
            );
          }
        })
    );
  }
}
