import 'package:fitness_webserver/helpers/responsiveness.dart';
import 'package:fitness_webserver/widgets/horizontal_menu_item.dart';
import 'package:fitness_webserver/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const SideMenuItem({this.itemName, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) { //when we have customscreensize then return verticalmenuitem
      return VerticalMenuItem(itemName: itemName, onTap: onTap,);
    } else {
      return HorizontalMenuItem(itemName: itemName, onTap: onTap,); //not customscreensize return Horizontalmenuitem
    }
  }
}
