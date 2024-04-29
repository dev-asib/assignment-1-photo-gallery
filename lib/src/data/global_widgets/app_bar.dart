import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar_leading.dart';
import 'package:photo_gallery/src/data/global_widgets/icon_theme.dart';
import 'package:photo_gallery/src/data/global_widgets/app_bar_title.dart';
import 'package:photo_gallery/src/data/utils/custom_colors.dart';
import 'package:photo_gallery/src/modules/home/home.dart';

class CustomAppBar extends StatelessWidget {
  double appBarLeadingHeight;
  double appBarLeadingWidth;
  double appBarLeadingBorderRadius;
  Color appBarLeadingContainerColors;
  double appBarToolBarHeight;
  String appBarTitleText;
  double appBarTitleFontSize;
  FontWeight customFontWeight;
  CustomAppBar({
    super.key,
    required this.appBarLeadingBorderRadius,
    required this.appBarLeadingContainerColors,
    required this.appBarLeadingHeight,
    required this.appBarLeadingWidth,
    required this.appBarToolBarHeight,
    required this.appBarTitleText,
    required this.appBarTitleFontSize,
    required this.customFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();

    return LayoutBuilder(builder: (BuildContext context, BoxConstraints boxConstraints){
      return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: customColors.appBarBackgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 17.24, bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
                  },
                  child:appBarLeading(
                    appBarLeadingHeight: appBarLeadingHeight,
                    appBarLeadingWidth: appBarLeadingWidth,
                    appBarLeadingBorderRadius: appBarLeadingBorderRadius,
                    appBarLeadingContainerColors: appBarLeadingContainerColors,
                    appBarLeadingWidget: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white,),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: appBarTitle(
                  appBarTitleText: appBarTitleText,
                  appBarTitleFontSize: appBarTitleFontSize,
                  customFontWeight: customFontWeight,
                ),
              ),
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert, size: 30, color: Colors.white,),
                ),
              ),

            ],
          ),
        ),
        toolbarHeight: 200,
      );
    });

  }
}




