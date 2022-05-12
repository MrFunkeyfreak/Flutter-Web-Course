import 'package:fitness_webserver/constants/controller.dart';
import 'package:fitness_webserver/routing/router.dart';
import 'package:fitness_webserver/routing/routes.dart';
import 'package:flutter/widgets.dart';

Navigator localNavigator () => Navigator (       //returns navigator
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,      // landingpage/initial Route
  onGenerateRoute: generateRoute,       //generated route from user
);