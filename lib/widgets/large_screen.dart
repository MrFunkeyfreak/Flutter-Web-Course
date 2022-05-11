import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(           //left side row
          color: Colors.red,
        )),
        Expanded(                //divided the page into 5 columns (main page)
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
