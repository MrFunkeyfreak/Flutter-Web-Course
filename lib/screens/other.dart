import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webserver/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen was clicked ${_counterController.counter.value} times"),
          SizedBox(height: 10),
      Center(
          child:
          ElevatedButton(onPressed: () {
            Get.back();
          }, child: Text("Open Other Screen"))
      )

          ]
      ),
    );
  }
}
