import 'package:flutter/material.dart';
import 'package:photo_gallery/src/modules/home/home_view_for_landscape/home_view_for_landscape_mode.dart';
import 'package:photo_gallery/src/modules/home/home_view_for_potrait/home_view_for_potrait_mode.dart';
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        if(orientation == Orientation.portrait){
          return HomeViewForDevicePotraitMode();
        } else{
          return HomeViewForDeviceLandscapeMode();
        }
      })
    );
  }
}
