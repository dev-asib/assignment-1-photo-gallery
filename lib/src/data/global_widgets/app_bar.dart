import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  CustomAppBar({
    super.key,
    required this.appBarLeadingBorderRadius,
    required this.appBarLeadingContainerColors,
    required this.appBarLeadingHeight,
    required this.appBarLeadingWidth,
    required this.appBarToolBarHeight,
    required this.appBarTitleText,
    required this.appBarTitleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    CustomColors customColors = CustomColors();
   /* return AppBar(
      backgroundColor: customColors.appBarBackgroundColor,
      leadingWidth: 80,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeActivity()));
          },
          child: appBarLeading(
            appBarLeadingHeight: appBarLeadingHeight,
            appBarLeadingWidth: appBarLeadingWidth,
            appBarLeadingBorderRadius: appBarLeadingBorderRadius,
            appBarLeadingContainerColors: appBarLeadingContainerColors,
            appBarLeadingWidget: Icon(Icons.arrow_back_ios),
          ),
        ),
      ),
      title: appBarTitle(
        appBarTitleText: appBarTitleText,
        appBarTitleFontSize: appBarTitleFontSize,
      ),
      
      

      
      
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        ),
      ],
      centerTitle: true,
      iconTheme: appBarIconThemeData(),
      toolbarHeight: appBarToolBarHeight,
    );*/

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: customColors.appBarBackgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
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
            appBarTitle(
              appBarTitleText: appBarTitleText,
              appBarTitleFontSize: appBarTitleFontSize,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, size: 30, color: Colors.white,),
            ),

          ],
        ),
      ),
      toolbarHeight: 200,
    );

  }
}
