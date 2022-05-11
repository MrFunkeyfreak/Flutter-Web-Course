import 'package:fitness_webserver/helpers/responsiveness.dart';
import 'package:fitness_webserver/widgets/large_screen.dart';
import 'package:fitness_webserver/widgets/small_screen.dart';
import 'package:fitness_webserver/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,         // need a key for the Scaffold
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),)
    );
  }
}
