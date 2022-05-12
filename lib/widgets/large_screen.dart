import 'package:fitness_webserver/helpers/local_navigator.dart';
import 'package:fitness_webserver/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu()
        ),
        Expanded(                //divided the page into 5 columns (main page)
            flex: 5,
            child: localNavigator()
            )
      ],
    );
  }
}
