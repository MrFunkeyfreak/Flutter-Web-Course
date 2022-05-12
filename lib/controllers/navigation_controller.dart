import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  static NavigationController instance = Get.find(); //need to assign key so the app know from which navigator we want to change
  final GlobalKey <NavigatorState> navigationKey = GlobalKey();

  Future <dynamic> navigateTo (String routeName) { //change screens
    return navigationKey.currentState!.pushNamed(routeName);
  }

  goBack () => navigationKey.currentState!.pop();  //going back to the last screen

}