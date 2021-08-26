import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/demo_controller.dart';

class DemoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DemoView'),
        centerTitle: true,
      ),
      body: GetBuilder<DemoController>(
        init: DemoController(),
        builder: (controller) {
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  '${controller.counter}',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text('Increment'),
              ),
            ],
          );
        },
      ),
    );
  }
}
