import 'dart:js';

import 'package:fitness_webserver/pages/authentication/authentication.dart';
import 'package:fitness_webserver/pages/clients/clients.dart';
import 'package:fitness_webserver/pages/drivers/drivers.dart';
import 'package:fitness_webserver/pages/overview/overview.dart';
import 'package:fitness_webserver/routing/routes.dart';
import 'package:flutter/material.dart';

Route <dynamic> generateRoute (RouteSettings settings){   //taking route settings from which we get route name
  switch (settings.name){
    case OverViewPageRoute:       //if route name = OverViewPageRoute, then return OverViewPage
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }

}

PageRoute _getPageRoute (Widget child){
  return MaterialPageRoute(builder: (context) => child);      // using this methode to navigate to the page
}