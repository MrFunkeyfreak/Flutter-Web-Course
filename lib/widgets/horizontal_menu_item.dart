import 'package:fitness_webserver/constants/controller.dart';
import 'package:fitness_webserver/constants/style.dart';
import 'package:fitness_webserver/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const HorizontalMenuItem({Key? key, this.itemName, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(        // using InkWell for on hover property
      onTap: onTap,
      onHover: (value){
        value ?
        menuController.onHover(itemName!)       //when hovering return item name
        :menuController.onHover("not hovering");    //not hovering return "not hovering"
    },
        child: Obx(() => Container(             //Obx for observing changes
          color: menuController.isHovering(itemName!)
          ? lightGrey.withOpacity(.1)        //if hovered then change background colour
          : Colors.transparent,       // not hovered = transparent
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName!) || menuController.isActive(itemName!),
                child: Container(
                  width: 6,
                  height: 40,
                  color: dark,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              
              SizedBox(width: _width / 88),
              
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

          )

        ))
    );
  }
}
