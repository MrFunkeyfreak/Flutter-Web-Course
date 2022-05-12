import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controller.dart';
import '../constants/style.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;

  const VerticalMenuItem({Key? key, this.itemName, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value){
        value
            ? menuController.onHover(itemName!)       //when hovering return item name
            : menuController.onHover("not hovering");    //not hovering return "not hovering"
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName!)
            ? lightGrey.withOpacity(.1)        //if hovered then change background colour
            : Colors.transparent,       // not hovered = transparent
            child: Row (
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName!) || menuController.isActive(itemName!),
                  child: Container(
                    width: 3,
                    height: 72,
                    color: dark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                
                Expanded(child: Column(      //here we use Column instead of having everything in a row bcs it's vertical menu
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: menuController.returnIconFor(itemName!),    //return the icon for the item
                    ),
                    if(!menuController.isActive(itemName!))        // not active widget
                      Flexible(child: CustomText(
                        text: itemName,
                        color:
                        menuController.isHovering(itemName!) ? dark : lightGrey,  //change when hovering from lightgrey to dark
                      ))
                    else
                      Flexible(child: CustomText(
                        text: itemName,
                        color: dark,       //active widget = dark
                        size: 18,
                        weight: FontWeight.bold,
                      ))


                  ],
                ))
              ],

            ),


    )),


    );
  }

}
