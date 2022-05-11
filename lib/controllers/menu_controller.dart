import 'package:fitness_webserver/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverViewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;        //to control which Item is active
  }

  onHover (String itemName){
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive (String itemName) => activeItem.value == itemName;         //controlling the item name which is active

  isHovering (String itemName) => hoverItem.value == itemName;        //controlling the item name which is hovered

  Widget returnIconFor (String itemName) {
    switch (itemName) {             //depending on item name return icon
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);



    }
  }

  Widget _customIcon (IconData icon, String itemName){
    if(isActive(itemName)) return Icon (icon, size: 22, color: dark,);   //when the item is active, then we return a Widget which is slightly bigger than the other
    else {
      return Icon(
        icon, color: isHovering(itemName) ? dark : lightGrey,);          //when the item is not active, then we return the icon and when hover, then colour = dark (not hover =  grey)
    }
  }

}