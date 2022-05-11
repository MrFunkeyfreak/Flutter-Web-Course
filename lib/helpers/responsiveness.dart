import 'package:flutter/material.dart';

const int largeScreenSize = 1366;     //laptop resolution
const int mediumScreenSize = 768;     //tablet resolution
const int smallScreenSize = 360;      //mobile resolution
const int customScreenSize = 1100;    //most common custom resolution

class ResponsiveWidget extends StatelessWidget {
  final Widget? largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  const ResponsiveWidget(
      {Key? key,
        @required this.largeScreen,
        this.mediumScreen,
        this.smallScreen,
        this.customScreen
      })
      : super(key: key);

static bool isSmallScreen (BuildContext context) =>       //smaller than smallScreenSize = small screen
    MediaQuery.of(context).size.width < mediumScreenSize;

static bool isMediumScreen (BuildContext context) =>      //larger or equal than mediumScreenSize but  smaller than largeScreenSize = medium screen
    MediaQuery.of(context).size.width >= mediumScreenSize &&
    MediaQuery.of(context).size.width < largeScreenSize;

static bool isLargeScreen (BuildContext context) =>      //larger or equal than largeScreen = large screen
    MediaQuery.of(context).size.width >= largeScreenSize;

static bool isCustomScreen (BuildContext context) =>    //everything between medium and custom screen size is custom screen size
    MediaQuery.of(context).size.width >= mediumScreenSize &&
    MediaQuery.of(context).size.width <= customScreenSize;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        double _width = constraints.maxWidth;
      if (_width >= largeScreenSize) {
        return Container(child: largeScreen);
      }
      else
        if (_width < largeScreenSize && _width >= mediumScreenSize){
          return Container(child: mediumScreen ?? largeScreen);  //if medium screen is null then return large screen
        }
        else {
        return Container(child: smallScreen ?? largeScreen);    //if small screen is null then return large screen
      }
    });
  }
}

