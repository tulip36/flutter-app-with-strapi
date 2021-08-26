import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/restaurant_controller.dart';

class RestaurantView extends GetView<RestaurantController> {
  @override
  Widget build(BuildContext context) {
    if (controller.restaurant.value.name == null) {
      debugger();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('RestaurantView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.restaurant.value.name}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
